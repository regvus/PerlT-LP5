use strict;
use warnings;

use Test::More tests => 11;
BEGIN { use_ok('PerlT::LP5::Ch06') };

use Test::Output;

### ex01 tests
ok(defined &ex01, '&ex01 is defined');
is(ex01(), undef);
is(ex01(undef), undef);
is(ex01('fred'), 'flintstone');
is(ex01('barney'), 'rubble');
is(ex01('wilma'), 'flintstone');
is(ex01('john'), undef);
is(ex01(1), undef);

### ex02 tests
ok(defined &ex02, '&ex02 is defined');


### ex03 tests
ok(defined &ex03, '&ex03 is defined');
