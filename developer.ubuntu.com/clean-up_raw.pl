#!/usr/bin/perl

# my @dirs = `find . -type f -name '*.html'`;
my @dirs = "";
push @dirs, qq|./api/scopes/cpp/sdk-15.04.4/unity.scopes.ValueSliderFilter/index.html\n|;
my $c = "";

foreach (@dirs) {

  chop();
  next if (/clean/);
  next if (!/(html5\/sdk-15.04.4|html5\/sdk-15.04.5|autopilot\/python\/1.5.0|autopilot\/python\/1.6.0|qml\/sdk-15.04.5|qml\/sdk-15.04.6|cpp\/sdk-15.04.4|cpp\/sdk-15.04.5|js\/sdk-15.04.4|js\/sdk-15.04.5)/);

  my ($dir,$file, $lastdir) = "";
  ($dir,$file) = $_ =~ m|^(.*[/\\])([^/\\]+?)$|;
  $dir =~ s/\.\/(.*)\//$1/;
  print "$dir, $file\n";

  if (`ls $dir | wc -w` == 1) {
    # only one file e.e. unitu.crap.io/index.md ... colapse to file
    my $path    = substr($dir, 0, rindex($dir, "/"));
    $lastdir = substr($dir, rindex($dir, "/") + 1, length($dir));
    $outputDir = qq|clean_raw/$path|;
    $outputFile = $lastdir.".md";
    $flat++;
  } else {
    $outputDir = qq|clean_raw/$dir|;
    $outputFile = $file;
    $outputFile =~ s/\.html/\.md/;
  }
  $outputFile = qq|$outputDir/$outputFile|;

  # make output directory
  `mkdir -p $outputDir` if (!-d "$outputDir");

  my $f = $lastdir;
  $f = $file if (!$lastdir);

  my $output = &clean_file($_, $dir, $f);

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

    $FLAGstart = 1 if (/(<!-- Start Element Content -->|<div class="row">|<div class="ten-col">)/ && !$FLAGstart);
    next if (!$FLAGstart);

    if ($FLAGstart == 1) {
      if (/-   (.*)/ || ($i > 1)) {

        # get last directory for name
        my $t = $_[2];
        $t =~ s/\.md$//;

        # first line
        $output = qq |---\nTitle: $t\n---\n\n# $t\n\n|;
        print STDERR qq |got title $t\n|;
        $FLAGstart = 2;
        #next;
      }
    }

    if ($FLAGstart == 2 && /<!-- Start Element Content -->/) {
      # skip if output if we find the Start Element
      # get last directory for name
      my $t = $_[2];
      $t =~ s/\.md$//;
      $output = qq |---\nTitle: $t\n---\n\n# $t\n\n|;
      next;
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

    # fix rel link
    s|"../(.[^/]*)/index.html"|"$1.md"|g;
    s|href=\"\.\.\/|href=\"|g;

    # internal links
    s|https://developer.ubuntu.com/api/apps/qml/sdk-\d\d\.\d\d\..|../|g;
    s|"\.\./sdk-\d\d\.\d\d\..|"../|g;

    # html to md links
    s|\(index.html#|(#|g;
    s|/index\.html|.md|g;
    s|\"index.html\#|\"\#|g;

    # remove funny anchors
    s/<span id="(.[^\"]*)"><\/span> (.*)/$1/;
    s/<span id="(.[^\"]*)" class="(.[^\"]*)"><\/span> //;
    s|<a class="anchor" id="(.[^\"]*)"></a>||g;
    s|<a name="(.[^\"]*)"></a>||g;

    # code blocks
    s|<div class="fragment">|\n```\n|g;
    s|</div><!-- fragment -->|\n```\n|g;

    # classes links
    s/" class="(.[^"]*)?"/"/g;
    s|<div(.[^>]*)?>||g;
    s|</div>||g;

    # remove maps
    s|usemap="(.[^"]*)?" ||g;
    s|<map (.[^>]*)?>||g;
    s|<area (.[^>]*)?>||g;
    s|<center><span class="legend">\[legend\]</span></center>||g;
    s|</map>||g;

    # remove  whitepsace
    s|^\s+||g;

    if (/\[Back to top\]\(\#\)/ || /<!-- End Element Content -->/ || /<!-- div.inner-wrapper -->/) {
      # end of content
      last;
    }
    $output .= $_;
  }

  close(IN);
  return($output);
}
