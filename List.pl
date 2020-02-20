#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

my @array = (1+2, 3-4, 5*6, 7/8);

say join(", ", sort @array); #Sort just sorts the array
say join(", ", reverse sort @array); #reverse sort - reverse sorts the array.
say join(", ", @array);

my @days = (1, 2, 3, 4, 5, 6, 7, 8, 9);
say scalar @days;
say scalar @days[3..4];#will print 5 and not 2
say @days[3..5];

my @nums = 1 .. 10; # Generates range of values. Awesome.
say @nums;
say $nums[7]; # An array value can be accessed only by a $ sigil and not by @ sigil.

#my @dayNames = (Mon, Tue, Wed, Thu, Fri, Sat);
#say @dayNames;