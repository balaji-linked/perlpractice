#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

sub total {
    my $total = 0;
    $total += $_ ? $_ : 0 for(@_);
    $total;
}
sub above_average {
    my $total = total(@_);
    my $len = scalar(@_);
    my $avg = $total/$len;
    my @lst = ();
    for my $val(@_) {
        push(@lst, $val) if $val > $avg;
    }
    @lst;
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";