#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

my $number = 5;
if ( $number > 10 ) {
	print "$number is greater than 10.\n";
}
elsif ( $number < 10 ) {
	print "$number is less than 10. \n";
}
else {
	print "$number is 10\n";
}
my $number2 = 220;
unless ($number2 == 20) {
	print "$number2 is not 20. \n";
}
else {
	print "$number2 == 20\n";
}

exit;
