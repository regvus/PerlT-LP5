package PerlT::LP5::Ch13;

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
    ex07
    ex08
);

our $VERSION = '0.01';

use File::Basename;
use File::Spec::Functions;

# ex01

sub ex01 {
    my $dir = shift;
    if ($dir =~ /^\s*$/) {
        chdir;
        say join "\n", <*>;
    } elsif (chdir $dir) {
        say join "\n", <*>;
    } else {
        warn "Cannot chdir to '$dir': $!.\n";
    }
}

# ex02

sub ex02 {
    my $dir = shift;
    if ($dir =~ /^\s*$/) {
        chdir
            or die "Can't chdir to your home directory: $!";
    } else {
        chdir $dir
            or die "Can't chdir to your home directory: $!";
    }
    say join "\n", sort <.* *>;
}

# ex03

sub ex03 {
    my $dir = shift;
    if ($dir =~ /^\s*$/) {
        chdir
            or die "Can't chdir to your home directory: $!";
    } else {
        chdir $dir
            or die "Can't chdir to your home directory: $!";
    }
    
    opendir DIR, '.'
        or die "Can't opendir '.': $!";
    for (sort readdir DIR){
        #next if /^\.{1,2}$/;
        say;
    }
    closedir DIR;
}

# ex04

sub ex04 {
    my $file = shift;
    unlink $file
        or warn "Can't unlink '$file': $!\n";
}

# ex05

sub ex05 {
    my ($source, $destination) = @_;
    $destination = catfile($destination, basename $source) if -d $destination;
    rename $source, $destination
        or warn "Can't rename $source to $destination: $!\n";
}

# ex06

sub ex06 {
    my ($source, $destination) = @_;
    $destination = catfile($destination, basename $source) if -d $destination;
    link $source, $destination
        or warn "Can't link $source to $destination: $!\n";
}

# ex07

sub ex07 {
    my ($key, $source, $destination);
    if (@_ == 3) {
        ($key, $source, $destination) = @_;
    } elsif (@_ == 2) {
        ($source, $destination) = @_;
    }
    $destination = catfile($destination, basename $source) if -d $destination;
    if (defined $key and $key eq '-s') {
        symlink $source, $destination
            or warn "Can't symlink $source to $destination: $!\n";
    } else {
        link $source, $destination
            or warn "Can't link $source to $destination: $!\n";
    }
}

# ex08

sub ex08 {
    for (<.* *>) {
        say $_, ' -> ', readlink $_ if -l $_; 
    }
}

1;
__END__
=head1 NAME

PerlT::LP5::Ch13 - Solutions to exersises from the Chapter 13 of the book
"Learning Perl, 5th Edition"

=head1 SYNOPSIS

  use PerlT::LP5::Ch13;

=head1 DESCRIPTION

Module PerlT::LP5::Ch13 is used to keep solutions to exercises from
the Chapter 13 of the book "Learning Perl, 5th Edition".

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

    ex06;

=item B<ex07>

    ex07;

=item B<ex08>

    ex08;


=back

=head2 EXPORT

ex01
ex02
ex03
ex04
ex05
ex06
ex07
ex08

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
