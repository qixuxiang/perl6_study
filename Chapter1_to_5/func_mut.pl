=pod
Functions do not change the state of the object they were called on.
Mutators modify the state of the object.
=cut

my @num=[6 , 32, 7 , 61, 36];
@num.push(99);#Mutator,change the initial @num
say @num;

say @num.sort;
# Function,"sort" doesn’t modify the state of the initial array:
say @num;

say @num.=sort;
say @num;
#".="enforce a function to act as a mutator
