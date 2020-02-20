#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

my @names = ();
sub greet {
    say scalar @names > 0 ? "Hi $_[0]! I've seen: @names" : "Hi $_[0]! You're the first one here!";
    push (@names, $_[0]);
}
greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );