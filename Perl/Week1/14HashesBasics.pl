#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

my %hash = ();
$hash{'first name'} = "john";
$hash{age}          = 25;
$hash{city}         = "London";

print "@{[%hash]}\n";
print "$hash{'first name'}\n";

%hash = (
	'name', 'john',
	'age',  '25',
	'city', 'london2'
);
print "$hash{city}\n";

%hash = qw(
	name david
	age 26
	city Melbourne
);
print "$hash{name}\n";

exit;
