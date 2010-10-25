use inc::Module::Install;
name 'Viva';
all_from 'lib/Viva.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
