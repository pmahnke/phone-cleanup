#!/usr/bin/perl

my @dirs = `find . -type f -name '*.md'`;
my $c = "";

foreach (@dirs) {

  chop();
  next if (/clean/);

  my ($dir,$file) = "";
  ($dir,$file) = $_ =~ m|^(.*[/\\])([^/\\]+?)$|;
  $dir =~ s/\.\/(.*)\//$1/;
  print "$dir, $file\n";

  my $outputDir = qq|clean/$dir|;
  my $outputFile = $file;
  $outputFile = qq|$outputDir/$outputFile|;

  # make output directory
  `mkdir -p $outputDir` if (!-d "$outputDir");

  my $output = &clean_file($_, $dir, $file);

  open (OUT, ">$outputFile") || die "Can't open output $outputFile\n";
  print OUT $output;
  close (OUT);

  $c++;

}
print qq |Done\n\nProcessed $c files\n|;



sub clean_file {

  my ($i, $output, $FLAGstart) = "";

  open (IN, "$_[0]") || die "can't open $_[0]\n";
  while (<IN>) {

    $i++ if ($FLAGstart);

    $FLAGstart = 1 if (/<!-- -->/ && !$FLAGstart);
    next if (!$FLAGstart);

    if ($FLAGstart == 1) {
      if (/-   (.*)/ || ($i > 2)) {

        # get last directory for name
        my $t = $_[2]; # substr($_[1], rindex($_[1], "/") + 1, length($_[1]));
        $t =~ s/\.md$//;

        #if (!$t && $1) {
        #  $t = $1;
        #  print STDERR qq |got title from page $t\n|;
        #}

        # first line
        $output = qq |---
Title: $t
---
        |;
        print STDERR qq |got title $t\n|;
        $FLAGstart = 2;
        next;
      }
    }

    # remove local paths
    s/\/$_[1]/../g;
    s|/api/||g; # remove /api/
    my $rel = $_[1];
    $rel =~ s/\/$//g; # remove trailing slash
    $rel =~ s|sources||g; # remove sources/
    my $end = rindex($rel, "/");
    $rel = substr($rel, 0, $end);
    s/$rel/../g;

#<a href="index.html#aef5d4691113e384992926928928ae334" class="el">AccountService</a> (Account \*<a href="index.html#a490333c2ed4d6f107c5493a9465d993b" class="el">account</a>, const <a href="../Accounts.Service/index.html" class="el">Service</a> &<a href="index.html#a256dc9d961214d5f60642a290a288998" class="el">service</a>)

    # fix rel link
    s|"../(.[^/]*)/index.html"|"$1.md"|g;
    s|href=\"\.\.\/|href=\"|g;
    
    # markdown links
    #s/<a href="(.[^"]*)" class="el">(.[^<]*)<\/a>/[$2]($1)/g;
    s/ class="el"//g;

    # internal links
    s|https://developer.ubuntu.com/api/apps/qml/sdk-15\.04\..|../|g;

    # html to md links
    s|\(index.html#|(#|g;
    s|/index\.html|.md|g;
    s|\"index.html\#|\"\#|g;

    # remove funny anchors
    s/<span id="(.[^\"]*)"><\/span> (.*)/$1/;
    s/<span id="(.[^\"]*)" class="(.[^\"]*)"><\/span> //;

    if (/\[Back to top\]\(\#\)/) {
      # end of content
      last;
    }
    $output .= $_;
  }

  close(IN);
  return($output);
}
