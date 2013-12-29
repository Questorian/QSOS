#!/usr/bin/env perl

use warnings;
use strict;

my @accounts = qw / qsdevop qsapp 0mNaAeR@5Zzp83ZbNMJn/;
my $pass = 'Questor123';
my $salt = 'qsos';
my $shell = '/bin/bash';


foreach my $acc (@accounts){
        print "creating account: $acc\n";
        my $crypt = crypt($pass, $salt);
        `useradd -m -s $shell -p $crypt $acc`;
        }


