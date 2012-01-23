#!/usr/bin/env perl

use warnings;
use strict;

my $base  = '/mnt';
my $count = 5;
my $ip    = '192.168.219.25';

foreach my $cd ( 1 .. 5 ) {
    my $path = $base . "/debian$cd";
    if ( !-d $path ) {
        print "creating dir: $path\n";

        # create the mount directories
        `mkdir $path`;

    }

    # mount the ISO image
    print "mounting ISO $cd\n";
    `mount -t nfs $ip:debian$cd $path`;

}
