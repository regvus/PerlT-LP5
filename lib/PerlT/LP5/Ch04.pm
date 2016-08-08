package PerlT::LP5::Ch04;

use 5.10.1;
use strict;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
    total
    ex02
    average
    above_average
    greet
    greet_all
);

our $VERSION = '0.01';

use Scalar::Util qw/looks_like_number/;

# ex01

sub total {
    my $sum = 0;
    for (@_) {
        $sum += $_ if defined $_ and looks_like_number $_;
    }
    $sum;
}

# ex02

sub ex02 {
    total 1 .. 1000;
}

# ex03

sub average {
    my @nums;
    for (@_) {
        push @nums, $_ if looks_like_number $_;
    }
    total(@nums) / @nums if @nums;
}

sub above_average {
    my $average = average @_;
    my @above_average;
    for (@_) {
        push @above_average, $_ if looks_like_number $_ and $_ > $average;
    }
    @above_average;
}

# ex04

sub greet {
    my $cur_person = shift;
    state $prev_person;
    return '' if not defined $cur_person or $cur_person eq '';
    print "Hi $cur_person! ";
    if (defined $prev_person) {
        say "$prev_person is also here!";
    } else {
        say "You are the first one here!";
    }
    $prev_person = $cur_person;
}

# ex05

sub greet_all {
    my $cur_person = shift;
    state @prev_persons;
    return '' if not defined $cur_person or $cur_person eq '';
    print "Hi $cur_person! ";
    if (@prev_persons) {
        say "I've seen: @prev_persons";
    } else {
        say "You are the first one here!";
    }
    push @prev_persons, $cur_person;
}


1;
__END__

=head1 NAME

PerlT::LP5::Ch04 - Solutions to exersises from the Chapter 4 of the book
"Learning Perl, 5th Edition"

=head1 SYNOPSIS

  use PerlT::LP5::Ch04;

=head1 DESCRIPTION

Module PerlT::LP5::Ch04 is used to keep solutions to exercises from
the Chapter 4 of the book "Learning Perl, 5th Edition".

=head2 FUNCTIONS

=over

=item B<total>

    my $sum  = total(1, 3, 9);               # $sum  == 13
    my $sum1 = total(1, undef, 9);           # $sum1 == 10
    my $sum2 = total('one', 'two', 'three'); # $sum2 == 0

Returns the sum of all arguments.

=item B<ex02>

    say ex02; # 500500

Returns the sum of the numbers from 1 to 1000 (500500).

=item B<average>

    my $average = average(1, 2, 3); # $average == 2

Returns the average of all arguments.

=item B<above_average>

    my @above_average = above_average(1, 2, 3); # @above_average == (3)

Returns only the numbers which are above the average of all arguments.

=item B<greet>

    greet("Fred");   # "Hi Fred! You are the first on here!"
    greet("Barney"); # "Hi Barney! Fred is also here!"

Greets one or two people.

=item B<greet_all>

    greet_all("Fred"); # "Hi Fred! You are the first on here!"
    greet_all("Barney"); # "Hi Barney! I've seen: Fred"
    greet_all("Wilma"); # "Hi Wilma! I've seen: Fred Barney"
    greet_all("Betty"); # "Hi Betty! I've seen: Fred Barney Wilma"

Greets all people.

=back

=head2 EXPORT

total
ex02
average
above_average
greet
greet_all

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
