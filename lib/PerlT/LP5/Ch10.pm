package PerlT::LP5::Ch10;

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

use Scalar::Util qw/looks_like_number/;
our $Debug = $ENV{DEBUG} // 0;

# ex01

sub ex01 {
    my $num = int(1 + rand 100);
    while (1) {
        print "Enter a number ('exit|quit' to finish): ";
        chomp(my $guess = <STDIN>);
        last if $guess =~ /quit|exit|^\s*$/i;
        unless (looks_like_number $guess) {
            say "== '$guess' is not a number!!! ==";
            next;
        }
        if ($guess > $num) {
            say "== Too high =="; 
        } elsif ($guess < $num) {
            say "== Too low ==";
        } else {
            say "You are win. The number was '$num'.";
            last;
        }
    }
}

# ex02

sub ex02 {
    my $num = int(1 + rand 100);
    say "The secret num is '$num'." if $Debug;
    while (1) {
        print "Enter a number ('exit|quit' to finish): ";
        chomp(my $guess = <STDIN>);
        last if $guess =~ /quit|exit|^\s*$/i;
        unless (looks_like_number $guess) {
            say "== '$guess' is not a number!!! ==";
            next;
        }
        if ($guess > $num) {
            say "== Too high =="; 
        } elsif ($guess < $num) {
            say "== Too low ==";
        } else {
            say "You are win. The number was '$num'.";
            last;
        }
    }
}

# ex03

sub ex03 {
    my $biggest = 0;
    for (keys %ENV) {
        $biggest = length $_ if length $_ > $biggest;
    }
    printf "%-${biggest}s => '%s'\n", $_, $ENV{$_} // 'undefined value'
        for sort keys %ENV;
}

1;
__END__
=head1 NAME

PerlT::LP5::Ch10 - Solutions to exersises from the Chapter 10 of the book
"Learning Perl, 5th Edition"

=head1 SYNOPSIS

  use PerlT::LP5::Ch10;

=head1 DESCRIPTION

Module PerlT::LP5::Ch10 is used to keep solutions to exercises from
the Chapter 10 of the book "Learning Perl, 5th Edition".

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
