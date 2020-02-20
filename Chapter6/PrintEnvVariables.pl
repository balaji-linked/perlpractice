#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

my $maxchars = 0;
for my $key (keys %ENV) {
    $maxchars = length($key) if length($key) > $maxchars
}
for my $key(sort keys %ENV) {
    printf "%-${maxchars}s  %s\n", $key, $ENV{$key};
}