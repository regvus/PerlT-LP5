package PerlT::LP5::Ch12;

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
    my $file = shift;
    return unless defined $file;
    my @fp;
    if (-e $file) {
        push @fp, 'readable' if -r _;
        push @fp, 'writable' if -w _;
        push @fp, 'executable' if -x _;
    }
    if (@fp) {
        say "File $file is " . (join ', ', @fp) . '.';
    } else {
        say "File $file doesn't exist.";
    }
}

# ex02

sub ex02 {
    my %files;
    for (@_) {
        $files{$_} = -M _ if -f;
    }
    
    my $oldest;
    for (sort keys %files) {
        $oldest = $_ if not defined $oldest or $files{$oldest} < $files{$_};
    }
    
    defined $oldest ? $files{$oldest} : '';
}

# ex03

sub ex03 {
    my @files;
    
    for (@_) {
        push @files, $_ if -f -o -r -w;
    }
    
    @files ? @files : '';
}

1;
__END__
=head1 NAME

PerlT::LP5::Ch12 - Solutions to exersises from the Chapter 12 of the book
"Learning Perl, 5th Edition"

=head1 SYNOPSIS

  use PerlT::LP5::Ch12;

=head1 DESCRIPTION

Module PerlT::LP5::Ch12 is used to keep solutions to exercises from
the Chapter 12 of the book "Learning Perl, 5th Edition".

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
