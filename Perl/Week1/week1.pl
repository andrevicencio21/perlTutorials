#!/usr/bin/perl
use 5.010;
use warnings;
use strict;
print "Content-type: text/html\n\n";

push( my @array, "one" );
push( @array,    "two" );
push( @array,    "three" );
print "@array \n";
my $total = $#array + 1;
print "$total \n";

my $variable = pop(@array);
print "$variable\n";
pop(@array);
print "@array \n";

my @array2 = ( "one", "two", "three" );
unshift(@array2, "zero");
print "@array2 \n";
shift(@array2);

print "@array2 \n";


exit;

