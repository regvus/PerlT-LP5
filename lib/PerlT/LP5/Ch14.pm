package PerlT::LP5::Ch14;

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

# ex01

sub ex01 {
    my @numbers = @_;
    return unless @numbers;
    my @sorted = sort { $a <=> $b } @numbers;
    @sorted;
}

# ex02

sub ex02 {
    my %last_name = @_;
    return unless %last_name;
    print map {"$_ $last_name{$_}\n"} sort {
        "\L$last_name{$a}" cmp "\L$last_name{$b}" or
        "\L$a" cmp "\L$b"
    } keys %last_name;
}

# ex03

sub ex03 {
    my $str = shift // return;
    my $substr = shift // return;
    
    my @places;
    for (my $pos = -1;  ;) {
        $pos = index($str, $substr, $pos + 1);
        last if $pos == -1;
        push @places, $pos;
    }
    
    @places;
}

1;
__END__
=head1 NAME

PerlT::LP5::Ch14 - Solutions to exersises from the Chapter 14 of the book
"Learning Perl, 5th Edition"

=head1 SYNOPSIS

  use PerlT::LP5::Ch14;

=head1 DESCRIPTION

Module PerlT::LP5::Ch14 is used to keep solutions to exercises from
the Chapter 14 of the book "Learning Perl, 5th Edition".

=head2 FUNCTIONS

=over

=item B<ex01>

    ex01;

=item B<ex02>

    ex02;

=item B<ex03>

    ex03;

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
