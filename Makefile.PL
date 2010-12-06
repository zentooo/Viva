use inc::Module::Install;
name 'Viva';
all_from 'lib/Viva.pm';

requires 'autodie';
requires 'Getopt::Compact::WithCmd';
requires 'File::Temp';
requires 'File::Copy::Recursive';
requires 'File::Path';
requires 'File::Inplace';
requires 'File::chdir';
requires 'Cwd';
requires 'Term::ANSIColor';
requires 'LWP';
requires 'JSON';
requires 'Data::Util';

tests 't/*.t';

unless (can_run 'git') {
    print "*** `git` command not installed!!\n";
    exit 1;
}

test_requires 'Test::More';
install_script 'bin/viva';
WriteAll;
