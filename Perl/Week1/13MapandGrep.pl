#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

my @array = ( 1 .. 10 );
map { $_ = $_ * 2 } (@array);
print "@array\n";
@array = qw(apple orange banana plum);
map { $_ = uc($_) } (@array);
print "@array\n";

@array = ( 1 .. 10 );
my @array2 = grep { $_ > 5 } @array;
print "@array2\n";
@array = qw(apple orange banana plum);
@array2 = grep{$_ =~ "n"}(@array);
print "@array2\n";

exit;
