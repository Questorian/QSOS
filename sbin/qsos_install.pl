#!/usr/bin/perl

use warnings;
use strict;

my @accounts = qw / qsapp qsdb qsdbro qsbkup qscust /;
my $pass = 'Questor123';
my $salt = 'qsos';

foreach my $acc (@accounts){
        print "creating account: $acc\n";
        my $crypt = crypt($pass, $salt);
        `useradd -p $crypt $acc`;

        #make home directory
        my $path = '/home/' . $acc;
        `mkdir $path`;
        `chown $acc $path`;
        `chgrp $acc $path`;

        }


