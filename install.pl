#!/usr/bin/env perl 

use strict;
use warnings;

my @base_packages = qw/sudo htop ntpdate vim vim-doc bzip2 tree build-essential mysql-server libmysqlclient-dev/;

foreach my $pkg (@base_packages){
	print "installing package: $pkg\n";
	system("apt-get --yes install $pkg");
	}


