#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';
use constant DEBUG => 1;
my $randomNum = int(1+rand 100);
say "Random number is $randomNum" if DEBUG;

print "Guess the random number : ";
chomp(my $rnd = <STDIN>);
until($rnd eq '' || $rnd eq 'quit' || $rnd eq 'exit') {
    if ($rnd eq $randomNum) {
        say "You guessed it right";
        last;
    }
    print "Incorrect guess. Try again. ";
    chomp($rnd = <STDIN>);
}