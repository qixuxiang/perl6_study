=pod
In Perl 6, two of the most common Input/Output interfaces are the Terminal and Files.
say writes to the standard output.
It appends a newline at the end. In other words, appends "\n"
print on the other hand behaves like say but doesn’t add a new line.
get is used to capture input from the terminal.
=cut

say 'Hello Mam.';
say 'Hello Sir.';

print '\ntest\n' ;
print "\ntest\n";
#diffrence between '' and ""!
=pod
output
Hello Mam.
Hello Sir.
=cut

my $name ;
say "hi,what is Your name?" ;
$name = get ;
#When the above code runs,
#the terminal will be waiting for you to input your name. Enter it and then hit [Enter].
say "Dear sir,my name is $name" ;


#prompt is a combination of print and get.
my $full_name = prompt "hi ,What is your name? ";
say "Dear sir, my full_name is $full_name";

=pod
Two subroutines can be used to run shell commands:
run Runs an external command without involving a shell
shell Runs a command through the system shell
It is platform and shell dependent.
All shell meta characters are interpreted by the shell,
including pipes, redirects, environment variable substitutions and so on.
=cut


my $last_name = 'Neo';
run 'echo', "hello $last_name";#equals to "echo" in unix
shell "ls";#equals to "ls" in unix
