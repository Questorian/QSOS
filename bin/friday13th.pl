#!/usr/bin/env perl 


# print all occurences of Friday 13th for next x years

use DateTime;

foreach my $year ( 2012 .. 2020 ) {
    foreach my $month ( 1 .. 12 ) {
        my $dt = DateTime->new(
            day   => 13,
            month => $month,
            year  => $year
        );

        if ( $dt->day_name eq 'Friday' ) {
            print 'Friday 13th on: ', $dt->ymd, "\n";
        }
    }
}
