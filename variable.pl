
#Perl 6 variables are classified into 3 categories: Scalars, Arrays and Hashes.

#A sigil (Sign in Latin) is a character that is used as a prefix to categorize variables.

#--------------Scalars begins here----------
#$ is used for scalars
#String
my $name='John Doe';#a line of perl6 code must be ended with ';'
say $name.uc;#to uppercase
say $name.chars;# number of chars
say $name.flip;#reverse

#Integer
my $age=99;
say $age.is-prime;
#Both String and Integer start with $,
#which means holds one value or reference


my $num = 2.3;
say $num.numerator;#分子
say $num.denominator;#最小分母
say $num.nude;

#--------------Scalars ends here----------


#-------------- Arrays begins here----------
#@ is used for arrays
#Arrays are lists containing multiple values.
my @animals = '123', 'cd', 'hg';#The array accept any number of values
#thus,length is auto-extending
say "the number of animals is"~@animals.elems~"animals";
#The tilde ~ is used for string concatenation
say "The animals is: " ~ @animals;
say "I want to add an element";
@animals.push("hehe");#add element to an Arrays
say "Animal is:"~@animals;
say "What I put in last is:"~@animals[3];
@animals.pop;#delete last oe element
say "We're going to remove: " ~ @animals.splice(1,2) ~ " and keep the " ~ @animals;
#splice(a,b) will remove b elements starting at position a.

my @test[3];
#This array will be able to hold a maximum of 3 values, indexed from 0 to 2.
@test[0]="hehe";
@test[1]="xixi";
@test[2]="haha";
say @test;
#Multidimensional arrays
my @tbl[3;2];
#Think of it as a 3x2 grid or array.
@tbl[0;0]=1;
@tbl[0;1]="he";
@tbl[1;0]=2;
@tbl[1;1]="ha";
@tbl[2;0]=3;
@tbl[2;1]="hei";
say @tbl;

=pod
Visual representation of the array:
[1 x]
[2 y]
[3 z]
=cut


#-------------- Arrays ends here----------


#-------------- Hashes begins here----------
=pod
A Hash is a set of Key/Value pairs.
% is used for Hashes
=cut

my %capital=('uk','London','China','beijing');
my %capital_copy=("uk"=>"London","China"=>"beijing");
say %capital==%capital_copy;#True
say %capital;
say %capital_copy;
%capital.push: ("France" =>'Paris');

#equals %capital.push: (France =>'Paris');


#.push: (key ⇒ 'Value') adds a new key/value pair.
say %capital.kv;
say %capital.keys;
say %capital.values;



#-------------- Hashes ends here----------
