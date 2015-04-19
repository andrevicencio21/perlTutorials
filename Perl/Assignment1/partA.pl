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
checkTextFile($firstFilePath);
print "Enter File Name for the second file:\n";
my $secondFilePath = <STDIN>;
chomp($secondFilePath);
checkTextFile($secondFilePath);

sub checkTextFile {
	if ( -e $_[0] ) {
		if ( -T $_[0] ) {
			print "$_[0] is a TEXT file\n";
		}
		else {
			print "$_[0] is NOT a TEXT file\n";
			print "1. Proceed	2. Exit\n";
			my $choice = <STDIN>;
			chomp($choice);
			if ( $choice == 2 ) {
				exit;
			}
		}
	}
	else {
		print "File Does Not Exist. Exiting Script";
		exit;
	}
}

print "------------- REPORT --------------- \n";
my $wc1 = `wc $firstFilePath`;
my @splitwc1 = split( / /, $wc1 );
print "\noriginal.txt META DATA:\n";
print "Lines: $splitwc1[1]\n";
print "Words: $splitwc1[2]\n";
print "Characters: $splitwc1[3]\n";

my $wc2 = `wc $secondFilePath`;
my @splitwc2 = split( / /, $wc2 );
print "\nmodified.txt META DATA:\n";
print "Lines: $splitwc2[1]\n";
print "Words: $splitwc2[2]\n";
print "Characters: $splitwc2[3]\n";

my @metaDifference = ();
for ( my $i = 0 ; $i <= 2 ; $i++ ) {
	$metaDifference[$i] = abs( $splitwc1[ $i + 1 ] - $splitwc2[ $i + 1 ] );
}
print "\nMeta Data Difference: \n";
print "Lines: $metaDifference[0]\n";
print "Words: $metaDifference[1]\n";
print "Characters: $metaDifference[2]\n";

print "\n" . "Unix diff Output\n" . `diff original.txt modified.txt` . "\n";
exit;
