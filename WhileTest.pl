#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

my $totalTickets = 1000;
say "How many ticket we sold so far?";
chomp(my $sold = <STDIN>);
while ($sold < $totalTickets) {
    my $available = $totalTickets - $sold;
    say "$available tickets available. How many would you like?";
    chomp(my $purchase = <STDIN>);
    if($purchase > $available) {
        say "Too much. Try again.";
        $purchase = 0;
    }
    $sold += $purchase;
}
say "All tickets sold out";
