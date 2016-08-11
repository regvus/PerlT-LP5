use strict;
use warnings;

use Test::More tests => 10;
BEGIN { use_ok('PerlT::LP5::Ch09') };

use Test::Output;

### ex01 tests
ok(defined &ex01, '&ex01 is defined');
is(ex01('fred', 'fredfredfred'), 'Matched: |<fredfredfred>|');
is(ex01('fred|barney', 'fredfredbarney'), 'Matched: |<fredfredbarney>|');
is(ex01('fred|barney', 'barneyfredfred'), 'Matched: |<barneyfredfred>|');
is(ex01('fred|barney', 'barneybarneybarney'), 'Matched: |<barneybarneybarney>|');


### ex02 tests
ok(defined &ex02, '&ex02 is defined');


### ex03 tests
ok(defined &ex03, '&ex03 is defined');


### ex04 tests
ok(defined &ex04, '&ex04 is defined');


### ex05 tests
ok(defined &ex05, '&ex05 is defined');


