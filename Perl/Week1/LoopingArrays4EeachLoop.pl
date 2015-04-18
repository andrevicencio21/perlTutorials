#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

my @array1 = qw(red orange blue green purple);
my $count  = 1;
foreach my $color (@array1) {
	print "Color $count:  $color\n";
	$count++;
}

my @array2 = ( 1 .. 10 );
foreach my $number (@array2) {
	$number = $number + 10;
	print "$number \n";
}
exit;

