package PerlT::LP5::Ch05;

use 5.10.1;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
    tac
    ex02
    ex03
);

our $VERSION = '0.01';

# ex01

sub tac {
    print reverse <>;
}

# ex02

sub ex02 {
    print "Enter some strings, to exit press Ctrl-D:\n";
    chomp(my @strings = <STDIN>);
    say "1234567890" x 5;
    printf "%20s\n" x @strings, @strings;
}

# ex03

sub ex03 {
    print "Enter a number: ";
    chomp(my $num = <STDIN>);
    print "Enter some strings, to exit press Ctrl-D:\n";
    chomp(my @strings = <STDIN>);
    say "1234567890" x (($num + 9) / 10);
    printf "%${num}s\n" x @strings, @strings;
}

1;
__END__
=head1 NAME

PerlT::LP5::Ch05 - Solutions to exersises from the Chapter 5 of the book
"Learning Perl, 5th Edition"

=head1 SYNOPSIS

  use PerlT::LP5::Ch05;

=head1 DESCRIPTION

Module PerlT::LP5::Ch05 is used to keep solutions to exercises from
the Chapter 5 of the book "Learning Perl, 5th Edition".

=head2 FUNCTIONS

=over

=item B<tac>

    @ARGV file1 file2 ... fileN;
    tac;

Prints lines in reverse mode. Names of files are sorted in back order.

=item B<ex02>

    ex02;

Prints requested strings with format "%20s\n".

=item B<ex03>

    ex03;

Prints requested strings with requested format.

=back

=head2 EXPORT

tac
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
