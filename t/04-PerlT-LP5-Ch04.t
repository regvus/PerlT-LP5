use strict;
use warnings;

use Test::More tests => 37;
BEGIN { use_ok('PerlT::LP5::Ch04') };

use Test::Output;

### ex01 tests
ok(defined &total, '&total is defined');
my @fred = qw{ 1 3 5 7 9 };
is(total(@fred), 25, 'total(qw/1 3 5 7 9/) == 25');
is(total(0), 0, 'total(0) == 0');
is(total(undef), 0, 'total(undef) == 0');
is(total(3, undef, 6), 9, 'total(3, undef, 6) == 9');
is(total(3, 'undef', 6), 9, "total(3, 'undef', 6) == 9");
is(total('one', 'two', 'three'), 0, "total('one', 'two', 'tree') == 0");

### ex02 tests
ok(defined &ex02, '&ex02 is defined');
is(ex02(), 500500, 'ex02() == 500500');
is(ex02(3, undef, 'undef', 0), 500500, 'ex02() == 500500');

### ex03 tests
ok(defined &average, '&average is defined');
ok(defined &above_average, '&average is defined');
# average tests
is(average(1, 2, 3), 2, 'average(1, 2, 3) == 2');
is(average(), 0, 'average() == 0');
is(average(3, undef, 6), 4.5, 'average(3, undef, 6) == 4.5');
is(average('one', 'two', 'three'), 0, "average('one', 'two', 'three') == 0");
# above_average tests
ok(is_deeply([ above_average(1 .. 10) ], [ qw(6 7 8 9 10) ]));
ok(is_deeply([ above_average(100, 1 .. 10) ], [ 100 ]));
ok(is_deeply([ () ], [ () ]));

### ex04 tests
ok(defined &greet, '&greet is defined');
is(greet(), '', "greet() == ''");
is(greet(''), '', "greet('') == ''");
is(greet(undef), '', "greet(undef) == ''");
stdout_is { greet('Fred') } "Hi Fred! You are the first one here!\n";
stdout_is { greet('Barney') } "Hi Barney! Fred is also here!\n";

### ex05 tests
ok(defined &greet_all, '&greet_all is defined');
is(greet_all(), '', "greet_all() == ''");
is(greet_all(''), '', "greet_all('') == ''");
is(greet_all(undef), '', "greet_all(undef) == ''");
stdout_is { greet_all('Fred') } "Hi Fred! You are the first one here!\n";
stdout_is { greet_all('Barney') } "Hi Barney! I've seen: Fred\n";
stdout_is { greet_all('Wilma') } "Hi Wilma! I've seen: Fred Barney\n";
stdout_is { greet_all('Betty') } "Hi Betty! I've seen: Fred Barney Wilma\n";
