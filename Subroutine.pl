#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

sub upcase {
    my @params = map {uc} @_;
    return wantarray ? @params : $params[0];
}
my $v1 = "Hello";
my $v2 = "World";
my ($v3, $v4) = upcase("Hello", "World");
say $v3, $v4;
my $v5 = upcase("Hello");
say $v5;