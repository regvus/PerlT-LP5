package PerlT::LP5::Ch09;

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

# ex01

sub ex01 {
    my $what = shift;
    return unless defined $what;
    $_ = shift;
    return if not defined $_ or $_ eq '';
    
    if (/($what){3}/) {
        "Matched: |$`<$&>$'|";
    } else {
        "No match: |$_|";
    }
}

# ex02

sub ex02 {
    for (@_) {
        if (open CUR, '<', $_) {
            if (open NEW, '>', "$_.out") {
                while (<CUR>) {
                    s/Fred/Larry/ig;
                    print NEW;
                }
                close NEW;
            }
            close CUR;
        }
    }
}

# ex03

sub ex03 {
    for (@_) {
        if (open CUR, '<', $_) {
            if (open NEW, '>', "$_.out") {
                while (<CUR>) {
                    s/Fred/=Barney=/ig;
                    s/Wilma/Fred/ig;
                    s/=Barney=/Wilma/g;
                    print NEW;
                }
                close NEW;
            }
            close CUR;
        }
    }
}

# ex04

sub ex04 {
    my $copyright = "## Copyright (C) 20XX by Yours Truly\n";
    $^I = '.bakki';
    while (<>) {
        s/(^#!.*\n)/$1$copyright/;
        print;
    }
}

# ex05

sub ex05 {
    return unless @_;
    my %do_these;
    $do_these{$_} = 1 for @_;
    
    while (<>) {
        delete $do_these{$ARGV} if /^## Copyright/;
    }
    
    @ARGV = sort keys %do_these;
    $^I = '.bak';
    while (<>) {
        $_ .= "## Copyright (c) 20XX by Yours Truly\n" if /^#!/;
        print;
    }
    
}

1;
__END__
=head1 NAME

PerlT::LP5::Ch09 - Solutions to exersises from the Chapter 9 of the book
"Learning Perl, 5th Edition"

=head1 SYNOPSIS

  use PerlT::LP5::Ch09;

=head1 DESCRIPTION

Module PerlT::LP5::Ch09 is used to keep solutions to exercises from
the Chapter 9 of the book "Learning Perl, 5th Edition".

=head2 FUNCTIONS

=over

=item B<ex01>

    ex01;

=item B<ex02>

    ex02;

=item B<ex03>

    ex03;

=item B<ex04>

    ex04;

=item B<ex05>

    ex05;

=item B<ex06>

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
