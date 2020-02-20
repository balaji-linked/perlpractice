#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

sub total {
    my $total = 0;
    $total += $_ ? $_ : 0 for(@_);
    $total;
}
my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines: ";
chomp(my @lines = <STDIN>);
my $user_total = total(@lines);
print "The total of those numbers is $user_total.\n";
my $sum = total(1..1000);
say "The sum from 1 to 1000 is $sum";

