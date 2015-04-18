#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

my %hash = qw(
  bird albatross
  fish shark
  insect spider
  animal dog
);

if ( exists( $hash{animal} ) ) {
	print "Key does exist\n";
}
else {
	print "Key doesnt exist!\n";
}

if ( defined( $hash{animal} ) ) {
	print "Key defined\n";
}
else {
	print "Key Not defeined!\n";
}

delete($hash{fish});

if ( exists( $hash{fish} ) ) {
	print "Key does exist\n";
}
else {
	print "Key doesnt exist!\n";
}
print "@{[%hash]}\n";
exit;
