#!/usr/bin/perl
use v5.14;
use warnings FATAL => 'all';

my $phrase = "Hi IntelliJ Idea";
say $phrase;
say length($phrase);

my @myhome = ("couch", "chair", "table");
#@myhome[3] = "stove";
#@myhome.push(("Fan"));
my ($var1, $var2, $var3) = @myhome;
say $var1;
say $var2;
($var2, $var1) = ($var1, $var2);
say $var1;
say $var2;
my %longday = (
    "Sun" => "Sunday",
    "Mon" => "Monday",
    "Tue" => "Tuesday",
    "Wed" => "Wednesday"
);
say $longday{"Sun"};
say "Today is $longday{'Mon'}";
say $longday{Mon}; #Double quotes are not mandatory.


say @myhome;#A concatenated version is printed.
say "-" x 5; # A small x is a repeat operator.

-e "/usr/bin/perl" or warn "perl doesn't exists";
unless(1==1) { #unless is opposite of if statement.
    say "Both numbers are different";
}
else {
    say "Both the numbers are same";
}

if (1==1) { # if condition mandatorily needs a statement block in perl.
    say "Both the numbers are same";
}

say "Both the numbers are same" if 1==1; # Handy syntax there's going to be only one line of statement after if.

=pod
This is how multiline comment is written in perl in an easier way. Write comments within =pod and =cut lines.
Actually, this is used for documentation in PERL. This can be used as multiline comment as well. pod means plain old documentation.
=cut

say my $x=1; #In perl, assigment returns the assigned variable itself. In this example, 1 will get printed.



