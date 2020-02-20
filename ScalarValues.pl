#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

my $temp = join($", @ARGV);#this is same as join(" ", @ARGV).But why we should use this?
say $temp;
say "@ARGV";

my ($a, $b, @rest) = @ARGV;
say @rest;

my $x = @rest; #assigning a list to a scalar returns the size of the list.
say $x;


#my $y = (7,8,9); # this will return (9) in a void context. no use.
my $y = (() = (7,8,9,10)); # this is the right way of getting the size of an array using a scalar variable.
say $y;

my @lst = (1, 2, 3, 4);
say @lst;
@lst = ();
say @lst;
$#lst = -1;

my $xx=4;
$xx ? 0 : 1;
say $xx;
