#slurp is usedd to read data from a file
my $data01 =slurp "/home/gitplace/perl6_study/Chapter6/1.txt";
say $data01;


#spurt is used to write data to a file
my $data02 = "Hello:
this is my first perl6 io !";

spurt "/home/gitplace/perl6_study/Chapter6/2.txt", $data02;

#Perl 6 can list the contents of a directory without resorting to shell commands (by using ls, for example).
say dir;                # List files and folders in the current directory
say dir "/home/gitplace";   # List files and folders in the specified directory

#In addition, you can create and delete directories.
mkdir "test";
#rmdir "newfolder";  #remove a dir;
=pod
IO.e checks if the directory/file exists.
IO.f checks if the path is a file.
IO.d checks if the path is a directory.
=cut
say "/home/gitplace/perl6_study/Chapter6/file_io.pl".IO.e;
say "/home/gitplace/perl6_study/Chapter6/".IO.e;

say "/home/gitplace/perl6_study/Chapter6/file_io.pl".IO.d;
say "/home/gitplace/perl6_study/Chapter6/".IO.d;

say "/home/gitplace/perl6_study/Chapter6/file_io.pl".IO.f;
say "/home/gitplace/perl6_study/Chapter6/".IO.f;
