#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

use constant PI => 4 * atan2(1,1); #investigate this line.
use constant DEBUG => 1;

say "Pi equals ", PI if DEBUG == 1;
chomp(my $radius = <STDIN>);
say "Circumference of the circle is " . ($radius ? 2 * PI * $radius : 0);