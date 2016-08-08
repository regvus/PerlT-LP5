package PerlT::LP5::Ch03;

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
    say "Enter some lines, then press Ctrl-D:";
    print reverse <STDIN>;
}

sub ex02 {
    my @names = qw/dummy fred betty barney dino wilma pebbles bamm-bamm/;
    
    say "Enter some numbers from 1 to $#names, one per line, then press Ctrl-D: ";
    
    chomp(my @numbers = <STDIN>);
    
    my $list;
    for (@numbers) {
        $list .= "$names[$_] "
            if looks_like_number($_) and ($_ >= 1) and ($_ < @names);
    }
    
    if (defined $list) {
        chop $list;
        say "'$list'";
    }
}

sub ex03 {
    say "Enter some strings, then press Ctrl-D:";
    
    # Print sorted strings in one line
    chomp(my @lines = <STDIN>);
    $" = ', ';
    print "'@{[sort @lines]}'" if @lines;
    $" = '';
    
    # Print sorted strings in different lines
    #print sort <STDIN>;
}

1;
__END__

=head1 NAME

PerlT::LP5::Ch03 - Solutions to exersises from the Chapter 3 of the book
"Learning Perl, 5th Edition"

=head1 SYNOPSIS

  use PerlT::LP5::Ch03;

=head1 DESCRIPTION

Module PerlT::LP5::Ch03 is used to keep solutions to exercises from
the Chapter 3 of the book "Learning Perl, 5th Edition".

=head2 FUNCTIONS

=over

=item B<ex01>

    ex01;

Reverses the order of requested strings' output.

=item B<ex02>

    ex02;

Prints names in the requested order.

=item B<ex03>

    ex03;

Prints requested strings in ASCII order.

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
