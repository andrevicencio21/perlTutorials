#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

my $sum1 = ( 4 + 2 ) / 4;
print "$sum1\n";

my $letter = "A";
$letter++;
print "$letter\n";

my $sum3 = 2**3;
print "$sum3 \n";

$sum3 = 10 % 3;
print "$sum3\n";

use integer;
$sum3 = 10 / 3;
print "$sum3\n";

my $number = 10;
if ( $number == 10 ) {
	print "$number == 10\n";
}
my $word = "hello";
if ( $word eq "hello" ) {
	print "$word \n";
}
if ( $word ne "hello" ) {
	print "not hello \n";
}

exit;

