use strict;
use warnings;

use Test::More;
eval 'use Test::Pod::Coverage';
plan skip_all => 'Test::Pod::Coverage required for testing POD coverage' if $@;
plan tests => 7;
pod_coverage_ok('PerlT::LP5');
pod_coverage_ok('PerlT::LP5::Ch01');
pod_coverage_ok('PerlT::LP5::Ch02');
pod_coverage_ok('PerlT::LP5::Ch03');
pod_coverage_ok('PerlT::LP5::Ch04');
pod_coverage_ok('PerlT::LP5::Ch05');
pod_coverage_ok('PerlT::LP5::Ch06');
