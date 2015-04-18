#!/usr/bin/perl
use 5.010;
use warnings;
use strict;
print "Content-type: text/html\n\n";

my @array1 = ( "one",  "two",  "three" );
my @array2 = ( "four", "five", "six" );
my @array3 = ( @array1, @array2 );
print "@array3\n";

my @reversed = reverse(@array3);
print "@reversed \n";
my @array4 = ( 4, 8, 2, 9, 0, 4, 1);
my @array4sorted = sort { $b <=> $a } (@array4);
print "@array4sorted \n";

my @arrayWords = ( "orange", "green", "blue", "black", "red" );
my @arrayWordsSorted = sort { $b cmp $a } (@arrayWords);
print "@arrayWordsSorted";
exit;
