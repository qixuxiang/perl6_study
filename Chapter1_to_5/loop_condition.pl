=pod
In perl6,Even if the code and the condition have been inverted,
the condition is always evaluated first.
=cut

my $age = 19;
if $age >18 {       # here between 18 and {, you must have a block or pointy block!
  say "you are an adult!"
}

say "you are an adult!" if $age > 18;

=pod
If the condition is not met,
we can specify alternate blocks for execution by using else and elsif

=cut

my $grade=85;

if ($grade < 50 ) {
  say "failed!";
} elsif ($grade > 90) {
  say "great!!";
} else {
  say "common";
}

=pod
Negated version of an if statement can be written using unless
Negation in Perl 6 is done using either ! or not
unless (condition) is used instead of if not (condition)
unless cannot have an else clause!!

=cut

#3 codes blow equal!

my $state = False;
if not $state {
  say "hehe"
}

unless $state {
  say "hehe"
}

unless ($state) {
  say "hehe";
}

=pod
with behaves like the if statement, but checks if the variable is defined.
without is the negated version of with. You should be able to relate it to unless.
If the first with condition is not met, an alternate path can be specified using orwith.
with and orwith can be compared to if and elsif.

=cut

my Int $var01 =1;

with $var01 {
  say "hello"
}

#If you run the code without assigning a value to the variable, nothing should happen.
my Int $var02;

with $var02 { #nothing happen.
  say 'Hello'
}

#The for loop iterates over multiple values.
my @arr = [1,2,3,4,5,6];
my $len = @arr.elems;
for @arr -> $arr-item  {
  say $arr-item * 100;
}

=pod
loop is another way of writing a for loop.
Actually, loop is how for loops are written in C-family programming languages.
Perl 6 belongs to the C-family languages.
=cut

loop (my $var = 0; $var < $len; $var++ ) {
  say $var *2 ;
}

#given is the Perl 6 equivalent of the switch statement in other languages, but much more powerful.
my $var03= 42;
given $var03 {
  when 0..50 {
    say "Less than or equal to 50" #After a successful match, the matching process will stop.
  }
  when Int {say "is an Int" }
  when 42  { say 42 }
  default { say "wtf?" }
}

#output is "Less than or equal to 50"

#Alternatively proceed will instruct Perl 6 to continue matching even after a successful match.

my $var04 = 42;

given $var04 {
    when 0..50 { say 'Less than or equal to 50';proceed}
    when Int { say "is an Int";proceed} #proceed will instruct to continue!
    when 42  { say 42 }
    default  { say "huh?" }
}
=pod
output
Less than or equal to 50
is an Int
42
=cut
