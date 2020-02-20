#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

use Module::CoreList qw //;

my %modules = %{$Module::CoreList::version{5.024}};
for(my($key, $value) = each(%modules)) {
    say $key."\t".$value;
}