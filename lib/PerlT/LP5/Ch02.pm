package PerlT::LP5::Ch02;

use 5.10.1;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	ex01
    ex02
    ex03
    ex04
    ex05
);

our $VERSION = '0.01';

use constant PI => 3.141592654;

sub ex01 {
    my $r = 12.5;
    my $circ = 2 * PI * $r;
    
    say "The circumference of a circle of radius $r is $circ.";
}

sub ex02 {
    print "What is the radius? ";
    chomp(my $radius = <STDIN>);
    my $circ = 2 * PI * $radius;
    
    say "The circumference of a circle of radius $radius is $circ.";
}

sub ex03 {
    print "What is the radius? ";
    chomp(my $radius = <STDIN>);
    my $circ = 0;
    $circ = 2 * PI * $radius if $radius > 0;
    
    say "The circumference of a circle of radius $radius is $circ.";
}

sub ex04 {
    print "Input the first number: ";
    chomp(my $num1 = <STDIN>);
    
    print "Input the second number: ";
    chomp(my $num2 = <STDIN>);
    
    my $product = $num1 * $num2;
    
    say "The product of $num1 and $num2 is $product.";
}

sub ex05 {
    print "Input a string: ";
    my $string = <STDIN>;
    
    print "Input a number of times: ";
    chomp(my $number = <STDIN>);
    
    print "The result is:\n", $string x $number;
}

1;
__END__

=head1 NAME

PerlT::LP5::Ch02 - Solutions to exersises from the Chapter 2 of the book
"Learning Perl, 5th Edition"

=head1 SYNOPSIS

  use PerlT::LP5;

=head1 DESCRIPTION

Module PerlT::LP5::Ch02 is used to keep solutions to exercises from
the Chapter 2 of the book "Learning Perl, 5th Edition".

=head2 FUNCTIONS

=over

=item B<ex01>

    ex01;

Calculates the circumference of a circle of radius 12.5 and prints it.

=item B<ex02>

    ex02;

Asks the radius, then calculates the circumference of a circle and prints it.

=item B<ex03>

    ex03;

Asks the radius, then calculates the circumference of a circle and prints it.
In case of the negative radius it returns 0 for the circumference.

=item B<ex04>

    ex04;
    
Returns the product of two requested numbers.

=item B<ex05>

    ex05;

Prints a requested string requested number of times.

=back

=head2 EXPORT

ex01
ex02
ex03
ex04
ex05

=head1 SEE ALSO

L<https://www.learning-perl.com>

=head1 REPOSITORY

L<https://github.com/regvus/PerlT-LP5>

=head1 AUTHOR

regvus, E<lt>regvus@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2016 by regvus

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.1 or,
at your option, any later version of Perl 5 you may have available.


=cut
