#!/usr/bin/perl
use 5.010;
use warnings;
use strict;


print "------------- REPORT --------------- \n";

my $originalPath = 'original.txt';
if ( -T $originalPath ) {
	print "$originalPath is a valid text file.\n";
}
else {
	print "$originalPath is NOT valid text file.\n";
}

my $modifiedPath = 'modified.txt';
if ( -T $modifiedPath ) {
	print "$modifiedPath is a valid text file.\n";
}
else {
	print "$modifiedPath is NOT valid text file.\n";
}

my $wc1 = `wc original.txt`;
my @splitwc1 = split( / /, $wc1 );
print "\noriginal.txt META DATA:\n";
print "Lines: $splitwc1[1]\n";
print "Words: $splitwc1[2]\n";
print "Characters: $splitwc1[3]\n";

my $wc2 = `wc modified.txt`;
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
