package PerlT::LP5::Ch06;

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

my %last_name = (
    fred   => 'flintstone',
    barney => 'rubble',
    wilma  => 'flintstone',
);

sub ex01 {
    my $name = shift;
    if (defined $name) {
        $last_name{$name};
    } else {
        undef;
    }
}

# ex02

sub ex02 {
    my %count;
    print "Enter some words, to exit press Ctrl-D:\n";
    chomp(my @words = <STDIN>);
    $count{$_}++ for @words;
    for (sort keys %count) {
        say "$_ => $count{$_}";
    }
}

# ex03

sub ex03 {
    my $biggest = 0;
    for (keys %ENV) {
        $biggest = length $_ if length $_ > $biggest;
    }
    printf "%-${biggest}s => '%s'\n", $_, $ENV{$_} for sort keys %ENV;
}

1;
__END__
=head1 NAME

PerlT::LP5::Ch06 - Solutions to exersises from the Chapter 6 of the book
"Learning Perl, 5th Edition"

=head1 SYNOPSIS

  use PerlT::LP5::Ch06;

=head1 DESCRIPTION

Module PerlT::LP5::Ch06 is used to keep solutions to exercises from
the Chapter 6 of the book "Learning Perl, 5th Edition".

=head2 FUNCTIONS

=over

=item B<ex01>

    my $last_name = ex01($name);
    
Returns $last_name of $name from %last_name hash.

=item B<ex02>

    ex02;
    
Returns the count times of every entered word.

=item B<ex03>

    ex03;
    
Prints %ENV.

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
