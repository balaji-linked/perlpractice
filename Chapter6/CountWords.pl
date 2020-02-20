#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

my %words;
chomp (my @lines=<STDIN>);

for my $line(@lines) {
    ++$words{$line} if exists $words{$line};
    $words{$line} = 1 if !exists $words{$line};
}

while(my($key, $value) = each %words) {
    say "$key was seen $value time" . ($value > 1 ? "s" : "");
}