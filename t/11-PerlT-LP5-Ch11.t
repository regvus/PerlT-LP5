use strict;
use warnings;

use Test::More tests => 2;
BEGIN { use_ok('PerlT::LP5::Ch10') };

### ex01 tests
ok(defined &ex01, '&ex01 is defined');
