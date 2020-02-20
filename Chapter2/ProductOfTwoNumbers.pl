#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

print "Enter number 1 "; chomp(my $num1=<STDIN>);
print "Enter number 2 "; chomp(my $num2=<STDIN>);

say "Product of $num1 and $num2 is " . (($num1 ? $num1:0) * ($num2 ? $num2:0));