#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

my %names = (
    fred    => "flintstone",
    barney  => "rubble",
    wilma   => "flintstone"
);

while(<STDIN>) {
    chomp;
    say $names{$_} if exists $names{$_};
    say "Invalid name" if !exists $names{$_};
}
