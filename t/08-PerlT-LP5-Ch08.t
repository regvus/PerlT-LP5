use strict;
use warnings;

use Test::More tests => 18;
BEGIN { use_ok('PerlT::LP5::Ch08') };

use Test::Output;

### ex01 tests
ok(defined &ex01, '&ex01 is defined');
is(ex01(), undef);
is(ex01(undef), undef);
is(ex01(''), undef);
is(ex01('beforematchafter'), 'Matched: |before<match>after|');

### ex02 tests
ok(defined &ex02, '&ex02 is defined');
is(ex02(), undef);
is(ex02(undef), undef);
is(ex02(''), undef);
is(ex02('wilma'), 'Matched: |<wilma>|');
is(ex02('barney'), 'No match: |barney|');
is(ex02('Mrs. Wilma Flintstone'), 'Matched: |Mrs. <Wilma> Flintstone|');
is(ex02('wilna&fred'), 'Matched: |<wilna>&fred|');

### ex03 tests
ok(defined &ex03, '&ex03 is defined');


### ex04 tests
ok(defined &ex04, '&ex04 is defined');


### ex05 tests
ok(defined &ex05, '&ex05 is defined');


### ex06 tests
ok(defined &ex06, '&ex06 is defined');


