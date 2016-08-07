package PerlT::LP5::Ch01;

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
);

our $VERSION = '0.01';

sub ex01 {
    print "Hello, World!\n"
}

sub ex02 {
    print `perldoc -i -f atan2`
}

sub ex03 {
    my @lines = `perldoc -i -f atan2`;
    
    for (@lines) {
        s/\w<([^>]+)>/\U$1/g;
        print
    }
}

1;
__END__

=head1 NAME

PerlT::LP5::Ch01 - Solutions to exersises from the Chapter 1 of the book
"Learning Perl, 5th Edition"

=head1 SYNOPSIS

  use PerlT::LP5;

=head1 DESCRIPTION

Module PerlT::LP5::Ch01 is used to keep solutions to exercises from
the Chapter 1 of the book "Learning Perl, 5th Edition".

=head2 FUNCTIONS

=over

=item ex01()

prints "Hello, World!\n"

=item ex02()

prints an output of the command `perldoc -i -f atan2`

=item ex03()

prints a formated output of the command `perldoc -i -f atan2`

=back

=head2 EXPORT

ex01
ex02
ex03

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
