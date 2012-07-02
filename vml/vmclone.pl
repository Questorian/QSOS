#!/usr/bin/perl -w 
# #!/usr/bin/env perl -w

use strict;
use warnings;

my $basedir = '/share/SHRDATA/PROD/datastores/ds01n-nqsaaa01';
my $template = 'win7sp1';
my $hostname = 'wqsaaa12';


# rename the template files
while (my $file = <$template*>){

	
	my $newfile = $file;
	$newfile =~ s/$template/$hostname/;

	print "renaming: $file -> $newfile\n";
	system ("mv $file $newfile");
}


# VMX configuration file - modify
# change all occurances of $template -> $hostname in files *.vmdk, *.vmxf, *.vmx

  print "execute:  perl -wpl -i.bak -e 's/$template/$hostname/g;' $hostname.vmdk\n";
  print "execute:  perl -wpl -i.bak -e 's/$template/$hostname/g;' $hostname.vmxf\n";
  print "execute:  perl -wpl -i.bak -e 's/$template/$hostname/g;' $hostname.vmx\n";

