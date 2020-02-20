#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

my %map = (
    1 => "fred",
    2 => "betty",
    3 => "barney",
    4 => "dino",
    5 => "wilma",
    6 => "pebbles",
    7 => "bamm-bamm"
);
chomp(my @lines = <STDIN>);#removes \n from the last character of every line.
say $map{$_} ? $map{$_} : "Invalid Input" for(@lines);