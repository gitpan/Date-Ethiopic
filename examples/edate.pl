#!/usr/bin/perl -w

require Date::Ethiopic::ET::am;

my $edate = new Date::Ethiopic::ET::am ( epoch => time, calscale => "gregorian" );

print $edate->full_date, "\n";
