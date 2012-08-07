#!/usr/bin/env perl

use strict;
use warnings;

use CPAN::Mini;

my $path = '/var/tmp/cpan';	# everyone can read/write here

if (! -d $path){

        `mkdir $path`;
        }

CPAN::Mini->update_mirror(

        # remote => 'ftp://mirror.switch.ch/mirror/CPAN',
        remote => 'http://cpan.mirror.solnet.ch/',
        local => $path,
        log_level => 'debug',

);

