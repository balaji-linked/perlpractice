#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

my @fred = qw(eating rocks is wrong);
my $fred = "right";

say "this is $fred[3]";
say "this is ${fred}[3]";