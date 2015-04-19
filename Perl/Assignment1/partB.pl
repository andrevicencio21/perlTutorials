#!/usr/bin/perl
use 5.010;
use warnings;
use strict;

#lol

# OOO Nice and clean new script lol
# Ok so the names
# modified.txt and original.txt they are in the same folder as the script. ok i see them

open( my $orig_file_handle, "<", "original.txt" )
  or die "Couldn't open original.txt";
open( my $mod_file_handle, "<", "modified.txt" )
  or die "Couldn't open modified.txt";

# so far so good i understand it ill stop you if i wana ask questions
# Ok sounds good!!

# Now we make a while loop to go through both files till the end
my $lineNumber = 0;
while (1) {
	my $line1 = <$orig_file_handle>
	  ; # ok the <> on the outside of the variable tells perl to read from teh file one line
	my $line2 = <$mod_file_handle>
	  ; # so just the first line of the file? Every iteration of this loop reads another file, so
	    # Eventually we get the entire file. we'll add acheck for the end shortly
	    # hmmm while 1? infiinte loop. that way no matter how long the file is we get it all.
	 # how does it now that the first line is done? Because it seems like $line1 is just an infinite loop of the first line of the file handle
	 # well what we have here is like a readline, we instantiate the line1 variable every time and read another line of the file.
	 # I see . yeah its kinda confusing at first, but its just th way it is. what class is this btw thats forcing you to use perl?
	 #Scripting language programming. Im starting Python next week. Perl seems really fun to be honest. Or scripting in General
	 # I only know Java atm and this is my first non compiled language. Ah yeah you're seeing the joy of scripting. the best part
	 # is that if you enjoy perl its a swiss army knife language, you can do anything with it. but I'm going to continue no wlolok!
	last
	  unless ( $line1 and $line2 )
	  ; #forgot to check if the file was at the end, could have had an infinite loop
	$lineNumber++
	  ; # To keep track of what line we are so we can print it when theres a difference

	if ( $line1 ne $line2 )
	{ # ok so the ne is != but for strings in perl. its kidna funky but it works.
		print "$lineNumber: \n$line1\n$line2\n";
	} # ok so there it basically says " if they arent the same it prints out the line number, then a newline then the original then the modiifed.
	  # I dont know what the ouput should be exactly but that should work.
	  #lets try the end just wait go ahead and try it
	  #error
	  #to be honest this is good enough for me. seems like its one line off, are the files not exactly alike?
	  #they are 95% identical but I think it's because lets say 1 line has a space then every other line after that will be different
	  # Yep thats what it looks like.
	  # the diff from unix uses some sort of alogrithm so even if 1 line is off it keeps still checking similarities.
	  #but what I really wanted to learn was exactly this actually. I don't expect anyone to come up with an algorithm LOL
	  #they were mentionting this on the assinment thread
	  #I don't have enough knowledge to apply complex algorithms  based on pseudo code. yeah i gotcha. but this is where perl
	  # truly shines, its a text processing langauge and one can do a lot with it. its my weapon of choice haha
	  # i actually was thinking the same. I want to use perl for alot of my scripting needs.
	  # what about the inbuilt diff() from perl.  What will that achieve? Check skype

	#!/usr/bin/perl
}
exit;

