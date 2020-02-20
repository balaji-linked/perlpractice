#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

#open(GRADES, "<:utf8", "../grades") || die "Cannot open file grades $!\n";
binmode(STDOUT, ':utf8');

my %grades;
while(<>) { #value stored to default $_ #VERY-IMPORTANT. Diamond operator takes the input from the ARGV values. No need to
    #open the file and have a separate handle for that.
    chomp; #value stored to default $_
    my ($student, $grade) = split(" ", $_);
    $grades{$student} .= $grade . " ";
}

for my $student (sort keys %grades) {
    my $total = 0;
    my @grades = split(" ", $grades{$student});
    for my $grade(@grades) {
        $total += $grade;
    }
    my $average = $total/scalar @grades; #scalar @array returns the size of the array.
    print "$student: $grades{$student}\tAverage: $average\n";
}