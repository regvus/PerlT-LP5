use strict;
use warnings;

use Test::More tests => 8;
BEGIN { use_ok('PerlT::LP5::Ch01') };

use Test::Output;

### ex01 tests
ok(defined &ex01, '&ex01 is defined');
stdout_is { ex01() } "Hello, World!\n";
stdout_is { ex01("Hello, world!\n") } "Hello, World!\n";
stdout_is { ex01(100) } "Hello, World!\n";
stdout_is { ex01(undef) } "Hello, World!\n";

### ex02 tests
ok(defined &ex02, '&ex02 is defined');

### ex03 tests
ok(defined &ex03, '&ex03 is defined');
