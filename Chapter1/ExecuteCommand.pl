use v5.14;
use warnings FATAL => 'all';

my $lines = `perldoc -u -f atan2`;
print $lines;

my @lines = `perldoc -u -f atan2`;
print @lines;

for(@lines) {
    s/\w<(.+?)>/\U$1/g;#Converts letters between < and > to upper case.
    print;
}

