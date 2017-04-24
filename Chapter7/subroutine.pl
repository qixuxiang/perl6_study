=pod
Subroutines (also called subs or functions) are a means of packaging and reusing functionality.
A subroutine definition begins with the keyword sub. After their definition, they can be called by their handle.
=cut

sub greet01 {
    say "hello";
}

greet01 ;

=pod
Subroutines can require input. That input is provided by arguments.
A subroutine may define zero or more parameters.
The number and type of parameters that a subroutine defines is called its signature.
The below subroutine accepts a string argument.
=cut

sub greet02(Str $name) {
    say "hello ,  " ~$name~ "!!!!"
}

greet02 "qixuxiang";

=pod
It is possible to define multiple subroutines that have the same name but different signatures.
When the subroutine is called, the runtime environment will decide which version to use based on the number and type of supplied arguments.
This type of subroutine is defined the same way as normal subs except that we use the multi keyword instead of sub.
you can regard multiple as override !
=cut
multi greet03($name)
{
    say "good morning $name";
}
greet03 "hehe";
