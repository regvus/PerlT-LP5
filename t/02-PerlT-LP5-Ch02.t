use strict;
use warnings;

use Test::More tests => 6;
BEGIN { use_ok('PerlT::LP5::Ch02') };

### ex01 tests
ok(defined &ex01, '&ex01 is defined');

### ex02 tests
ok(defined &ex02, '&ex02 is defined');

### ex03 tests
ok(defined &ex03, '&ex03 is defined');

### ex04 tests
ok(defined &ex04, '&ex04 is defined');

### ex05 tests
ok(defined &ex05, '&ex05 is defined');
