#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';
use Time::Moment;

my $year = $ARGV[0];
my $month = $ARGV[1];

my $date = Time::Moment->new(
    year  => $year,
    month => $month
);

my $today = Time::Moment->now;

my $years = $date->delta_years($today);
my $months = $date->delta_months($today) % 12;
printf "%d years and %d months\n", $years, $months;


