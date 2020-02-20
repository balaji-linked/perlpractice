#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

for my $arg (@ARGV) { #for each for loop.
    say $arg;
}

while(@ARGV) {
    say shift @ARGV;
}

my %hsh = (
    1 => "One",
    5 => "Five",
    3 => "Three",
    2 => "Two",
    4 => "Four"
);



for my $key (sort(keys(%hsh))) {
    say $hsh{$key};
}

my $info = `dir`; #dir command is executed and the output is stored in $info
say $info; #$info is printed.
my $val;
#print $val while($val = <STDIN>);
print while<STDIN>; #another short hand notation.
#print by default print $_ and STDIN by default stores value in $_.