use strict;
use warnings;

use Test::More tests => 4;
BEGIN { use_ok('PerlT::LP5::Ch05') };

use Test::Output;

### ex01 tests
ok(defined &tac, '&tac is defined');


### ex02 tests
ok(defined &ex02, '&ex02 is defined');


### ex03 tests
ok(defined &ex03, '&ex03 is defined');

