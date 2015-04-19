#!/usr/bin/perl
use 5.010;
use warnings;
use strict;
use FileHandle;

my $filepath1 = 'C:\Users\andre1\git\perlTutorials\Perl\Assignment1\original.txt';
if (-T $filepath1){
	print "exists";
}else{
	print "does not exist";
}

exit;
