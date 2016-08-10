package PerlT::LP5::Ch08;

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
    ex06
);

our $VERSION = '0.01';

# ex01

sub ex01 {
    $_ = shift;
    return if not defined $_ or $_ eq '';
    if (/match/) {
        "Matched: |$`<$&>$'|";
    } else {
        "No match: |$_|";
    }
}

# ex02

sub ex02 {
    $_ = shift;
    return if not defined $_ or $_ eq '';
    if (/\b\w*a\b/) {
        "Matched: |$`<$&>$'|";
    } else {
        "No match: |$_|";
    }
}

# ex03

sub ex03 {
    $_ = shift;
    return if not defined $_ or $_ eq '';
    if (/(\b\w*a\b)/) {
        "Matched: |$`<$&>$'|" . "\n\$1 contains $1";
    } else {
        "No match: |$_|";
    }
}

# ex04

sub ex04 {
    $_ = shift;
    return if not defined $_ or $_ eq '';
    if (/(?<word>\b\w*a\b)/) {
        "Matched: |$`<$&>$'|" . "\n'word' contains $+{word}";
    } else {
        "No match: |$_|";
    }
}

# ex05

sub ex05 {
    $_ = shift;
    return if not defined $_ or $_ eq '';
    if (/(?<word>\b\w*a\b)(?<tail>.{0,5})/) {
        "Matched: |$`<$&>$'|" .
        "\n'word' contains '$+{word}'" .
        "\n'tail' contains '$+{tail}'";
    } else {
        "No match: |$_|";
    }
}

# ex06

sub ex06 {
    $_ = shift;
    return if not defined $_ or $_ eq '';
    if (/\s+$/) {
        "Matched: |$`<$&>$'|";
    } else {
        "No match: |$_|";
    }
}

1;
__END__
=head1 NAME

PerlT::LP5::Ch08 - Solutions to exersises from the Chapter 8 of the book
"Learning Perl, 5th Edition"

=head1 SYNOPSIS

  use PerlT::LP5::Ch08;

=head1 DESCRIPTION

Module PerlT::LP5::Ch08 is used to keep solutions to exercises from
the Chapter 8 of the book "Learning Perl, 5th Edition".

=head2 FUNCTIONS

=over

=item B<ex01>

    ex01;

=item B<ex02>



=item B<ex03>



=item B<ex04>



=item B<ex05>



=item B<ex06>

=back

=head2 EXPORT

ex01
ex02
ex03
ex04
ex05
ex06

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
