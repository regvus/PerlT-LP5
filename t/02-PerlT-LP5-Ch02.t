use strict;
use warnings;

use Test::More 'no_plan';
BEGIN { use_ok('PerlT::LP5::Ch02') };

use Test::Output;

# ex01 tests
ok(defined &ex01, '&ex01 is defined');

# ex02 tests
ok(defined &ex02, '&ex02 is defined');

# ex03 tests
ok(defined &ex03, '&ex03 is defined');

# ex04 tests
ok(defined &ex04, '&ex04 is defined');

# ex05 tests
ok(defined &ex05, '&ex05 is defined');
