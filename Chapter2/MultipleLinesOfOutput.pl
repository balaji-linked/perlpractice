#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

say "Enter a string: ";
chomp(my $str = <STDIN>);
say "Enter the number: ";
chomp(my $num = <STDIN>);
while($num) {
    say $str;
    $num--;
}