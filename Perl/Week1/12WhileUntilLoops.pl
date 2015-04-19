#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

my $count = 1;
while ( $count <= 10 ) {
	print "hello \n";
	$count++;
}

my @array = qw(frog dog cat bird elphant);
$count = 0;
while ( $count <= $#array ) {
	print "$array[$count]\n";
	$count++;
}
@array = qw(frog dog cat bird elphant);
$count = 0;
until ( ( $array[$count] ) eq "" ) {
	print "animal: $array[$count]\n";
	$count++;
}

exit;
