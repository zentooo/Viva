use inc::Module::Install;
name 'Viva';
all_from 'lib/Viva.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
install_script 'bin/viva';
auto_set_repository;
auto_include;
WriteAll;
