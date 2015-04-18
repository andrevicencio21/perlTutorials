#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

my %hash = qw(
  food sandwich
  dessert donut
  drink coke
);
while ( ( my $key, my $value ) = each(%hash) ) {
	print "$key - $value\n";
}

foreach my $key ( keys %hash ) {
	print "$key\n";
}

foreach my $value ( values %hash ) {
	print "$value\n";
}
exit;
