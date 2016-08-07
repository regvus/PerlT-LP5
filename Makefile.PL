use 5.10.1;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME              => 'PerlT::LP5',
    VERSION_FROM      => 'lib/PerlT/LP5.pm',
    PREREQ_PM         => {
        Test::Output        => 0,
        Test::Warn          => 0,
        Test::NoWarnings    => 0,
        Test::File          => 0,
        Test::Pod           => 0,
        Test::Pod::Coverage => 0,
    },
    ABSTRACT_FROM     => 'lib/PerlT/LP5.pm',
    AUTHOR            => 'regvus <regvus@gmail.com>',
    LICENSE           => 'perl',
);
