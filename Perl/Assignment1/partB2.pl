#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

print "-------------File Compare Script-------------\n";
print
"*Please make sure files to compare are in the same Directory as the script\n";
print "*Enter File Name for the first file:\n";
my $firstFilePath = <STDIN>;
chomp($firstFilePath);
print "Enter File Name for the second file:\n";
my $secondFilePath = <STDIN>;
chomp($secondFilePath);
print "------------- REPORT --------------- \n";
wcReport( $firstFilePath, $secondFilePath );

sub wcReport {
	my $lineCountFirst      = 0;
	my $wordCountFirst      = 0;
	my $characterCountFirst = 0;
	open( my $fh, "<", $_[0] );
	while ( my $line = <$fh> ) {
		$lineCountFirst++;
		my @words = split( / /, $line );
		$wordCountFirst += $#words + 1;
		$characterCountFirst += length($line);
	}
	print "$_[0] META-DATA\n";
	print
"Lines: $lineCountFirst	Words: $wordCountFirst	Characters: $characterCountFirst\n";

	my $lineCountSecond      = 0;
	my $wordCountSecond      = 0;
	my $characterCountSecond = 0;
	open( my $fh2, "<", $_[1] );
	while ( my $line = <$fh2> ) {
		$lineCountSecond++;
		my @words = split( / /, $line );
		$wordCountSecond += $#words + 1;
		$characterCountSecond += length($line);
	}
	my $lineDifference = abs( $lineCountFirst - $lineCountSecond );
	my $wordDifference = abs( $wordCountFirst - $wordCountSecond );
	my $characterDifference =
	  abs( $characterCountFirst - $characterCountSecond );

	print "$_[1] META-DATA\n";
	print
"Lines: $lineCountSecond	Words: $wordCountSecond	Characters: $characterCountSecond\n";

	print "META-DATA Difference\n";
	print "Lines: $lineDifference";
	if ( $lineCountFirst > $lineCountSecond ) {
		print ">	";
	}
	else { print "<	" }
	print "Words: $wordDifference";
	if ( $wordCountFirst > $wordCountSecond ) {
		print ">	";
	}
	else { print "<	" }
	print "Characters: $characterDifference";
	if ( $characterCountFirst > $characterCountSecond ) {
		print ">	";
	}
	else { print "<	" }

}

open( my $file1, "<", $firstFilePath )
  or die "Couldn't open original.txt";
open( my $file2, "<", $secondFilePath )
  or die "Couldn't open modified.txt";
my $lineNumber = 0;
while (1) {
	my $line1 = <$file1>;

	my $line2 = <$file2>;

	last
	  unless ( $line1 and $line2 );

	$lineNumber++;
	if ( $line1 ne $line2 ) {
		print "$lineNumber: \n$line1\n$line2\n";
	}

}
exit;
