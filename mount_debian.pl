#!/usr/bin/env perl

use warnings;
use strict;

my $base = '/mnt';
my $count = 5;

foreach my $cd (1 .. 5){
	my $path = $base . "/debian$cd";
	if (! -d $path){
		print "creating dir: $path\n";
	
		# create the mount directories
		`mkdir $path`;

		}

	# mount the ISO image
	print "mounting ISO $cd\n";
	`mount -t nfs 192.168.0.5:debian$cd $path`;

	}

