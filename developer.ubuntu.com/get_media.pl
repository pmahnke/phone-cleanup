#!/usr/bin/perl

open (IN, "extass2.txt") || die "cannot open";
my $output = "";
while (<IN>) {

  chop();
  next if (/search-white.svg/);

  s|-\.\./|-api/|g;

  my ($dir, $file, $full) = "";
  ($dir,$file) = $_ =~ m|^(.*[/\\])([^/\\]+?)$|;
  $dir =~ s/\.\/(.*)\//$1/;
  $full = $_;
  $full =~ s|/|\\\/|g;
  print "$dir, $full, $file\n";

  $output .= qq |
wget --output-document=/Users/peter/src/phone-docs/media/$file $_
sed -i '' -e "s/$full/..\\\/..\\\/media\\\/$file/g" *\/*\/*\/*.md

|;

}
close (IN);

open (OUT, ">get_assets.sh") || die "Cannot open for writing";
print OUT "#!/bin/sh\n\n";
print OUT $output;
close (OUT);

print "Done.\n";
