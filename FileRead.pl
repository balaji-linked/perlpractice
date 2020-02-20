#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

open(GRADES, "<:utf8", "grades") || die "Can't open file grades: $!\n"; #$! represents the exception message being thrown by the system IO.
binmode(STDOUT, ':utf8');

my %grades;
while(my $line = <STDIN>) {
    my ($student, $grade) = split(" ", $line);
    $grades{$student} .= $grade . " ";
}

for my $student (sort keys %grades) {
    my $total = 0;
    my @grades = split(" ", $grades{$student});
    for my $grade(@grades) {
        $total += $grade;
    }
    my $average = $total/ scalar @grades; #scalar @array returns the size of the array.
    print "$student: $grades{$student}\tAverage: $average\n";
}