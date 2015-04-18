use 5.010;
use warnings;
use strict;
print "Content-type: text/html\n\n";

my @array1 = ( "red", "blue", "orange", "white" );
print "@array1\n";
my @array2 = qw(red fuck blue orange white);
print "@array2\n";

my @array3 = ( 1, 2, 3, 4, 5 );
print "@array3 \n";

my @array4 = (1..5);
print "@array4 \n";

my @array5 = ("hello") x 100;
print "@array5 \n";
exit;
