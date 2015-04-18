#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

my %hash = qw(
  breakfast cereal
  lunch sandwich
  dinner pie
);

my %reversed = reverse %hash;
foreach my $key ( keys %reversed ) {
	print "$key - $reversed{$key}\n";
}

exit;
