#!/usr/bin/perl 

use strict;
use warnings;

# define vaiables
my $basedir  = '/share/SHRDATA/PROD/datastores/ds01n-nqsaaa01';
my $template = shift;
my $hostname = shift;

if ( !defined($template) ) { usage() }
if ( !defined($hostname) ) { usage() }

# rename the template files
while ( my $file = <$template*> ) {    # foreach file that matches template

    my $newfile = $file;
    $newfile =~ s/$template/$hostname/;

    print "renaming: $file -> $newfile\n";
    system("mv $file $newfile");
}

# VMX configuration file - modify
# change all occurances of $template -> $hostname in files *.vmdk, *.vmxf, *.vmx

print
    "execute:  perl -wpl -i.bak -e 's/$template/$hostname/g;' $hostname.vmdk\n";
print
    "execute:  perl -wpl -i.bak -e 's/$template/$hostname/g;' $hostname.vmxf\n";
print
    "execute:  perl -wpl -i.bak -e 's/$template/$hostname/g;' $hostname.vmx\n";

print 

    "execute:  perl -wpl -i.bak -e 's/$template/$hostname/g;' $hostname-000001.vmdk\n";


sub usage {

    print "usage: $0 <template_name> <target_machine_name>\n";
    exit 10;

}
