#!/usr/bin/perl

my @dirs = `find . -type f -name '*.html'`;
my $c = "";

foreach (@dirs) {

  chop();

  my ($dir,$file, $outputFile, $outputDir) = "";
  ($dir,$file) = $_ =~ m|^(.*[/\\])([^/\\]+?)$|;
  $dir =~ s/\.\/(.*)\//$1/;
  print "$dir, $file\n";

  if (`ls $dir | wc -w` == 1) {
    # only one file e.e. unitu.crap.io/index.md ... colapse to file
    my $path    = substr($dir, 0, rindex($dir, "/"));
    my $lastdir = substr($dir, rindex($dir, "/") + 1, length($dir));
    $outputDir = qq|sources/$path|;
    $outputFile = $lastdir.".md";
    $flat++;
  } else {
    $outputDir = qq|sources/$dir|;
    $outputFile = $file;
    $outputFile =~ s/\.html/\.md/;
  }
  $outputFile = qq|$outputDir/$outputFile|;


  # make output directory
  `mkdir -p $outputDir` if (!-d "$outputDir");

  # run pandoc
  print qq |pandoc -f html -t markdown_github -s $_ -o $outputFile\n|;
  `pandoc -f html -t markdown_github -s $_ -o $outputFile`;

  $c++;

}
print qq |Done\n\nProcessed $c files, flattened $flat\n|;
