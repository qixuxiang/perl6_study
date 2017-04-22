#.WHAT will return the type of value held in a variable.
my $var = "text";
my $val = 'text';
say $var.WHAT;
say $val.WHAT;
#Both '' and "" are (Str)
$var = 123;
say $var;
say $var.WHAT;

=pod
#the type of value in $var was once (Str) and then (Int)
#dynamic typing. Dynamic in the sense that variables may contain values of Any type.

=cut

my Str $var1 = 'Text';
say $var1;
say $var1.WHAT;

=pod
#static typing.
Static in the sense that variable types are defined before assignment and cannot change.
=cut

#Perl 6 is classified as gradually typed; it allows both static and dynamic typing.
my Int @arr = 1,2,3;
my Str @langua ="hello", "呵呵", "안녕하세요","こんにちは";
#perl6 support utf-8;
say @langua;
say @langua.elems;

#type of Hash is the type of key of Hash
my Int %country_code =("uk",44,"US",22);
say %country_code;
say %country_code.WHAT;

=pod
#  most commonly used types
#  1.Mu : The root of the Perl 6 type hierarchy
#  2.Any : Default base class for new classes and for most built-in classes
#  3.Cool : Value that can be treated as a string or number interchangeably
#  such as
#  my Cool $var = 31; say $var.flip; say $var * 2;
#  4.Str : String of characters.  my Str $var = "NEON";
#  5.Int : Integer (arbitrary-precision) 7+7
#  6.Rat : Rational number (limited-precision) 0.1+1.2
#  7.Bool : Boolean

#Introspection is the process of getting information about an object properties like its type.


=cut

my Int $var02;
say $var02.WHAT;    # (Int)
my $var2;           #The type of an empty variable that wasn’t strongly declared is (Any)
say $var2.WHAT;   # (Any)
$var2 = 1;
say $var2.WHAT;   # (Int)
$var2 = "Hello";
say $var2.WHAT;   # (Str)
$var2 = True;
say $var2.WHAT;   # (Bool)
$var2 = Nil;      #To clear the value of a variable, assign Nil to it!
say $var2.WHAT;   # (Any)
