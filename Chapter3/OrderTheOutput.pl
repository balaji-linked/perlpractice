#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';


chomp(my @lines=<STDIN>);
#print in the same line separated by a space.
say join(" ", sort @lines);
my @sorted = sort @lines;
#print "@sorted\n";
#print in different line separated by a new line character.
say join("\n", sort @lines);