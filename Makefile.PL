use inc::Module::Install;
name 'Viva';
all_from 'lib/Viva.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

unless (can_run 'git') {
    print "*** `git` command not installed!!\n";
    exit 1;
}

test_requires 'Test::More';
install_script 'bin/viva';
auto_set_repository;
auto_include;
WriteAll;
