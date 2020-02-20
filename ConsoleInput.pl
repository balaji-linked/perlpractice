#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

print "Enter a number";
my $number;
chomp($number = <STDIN>);
say "The number you entered was $number";
my $a = 5;
my $b = 5;
say $a, " equals to ", $b , "."