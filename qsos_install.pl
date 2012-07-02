#!/usr/bin/env perl

use warnings;
use strict;

my @accounts = qw / qsdevel qscust qsdb qsdbro qsapp /;
my $pass = 'Questor123';
my $salt = 'qsos';

foreach my $acc (@accounts){
        print "creating account: $acc\n";
        my $crypt = crypt($pass, $salt);
        `useradd -p $crypt $acc`;
        }


