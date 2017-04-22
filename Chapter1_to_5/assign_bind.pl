
my Int $var01 = 123;#"=" means assignment in perl6
say $var01;
$var01 = 999;#you can change the value assigned to a variable
say $var01;

my Int $var02 := 123;#Binding is done using the := operator.
say $var02;#you cannot change the value bound to a variable.

=pod
Variables can also be bound to other variables
Binding variables is bi-directional.
$a := $b and $b := $a have the same effect.
you can consider that a is alias of b and vice versa!
=cut

my $a;
my $b;
$b := $a;
$a = 7;
say $b;
$b = 8;
say $a;
