package Date::Ethiopic::ER::byn;
use base ( "Date::Ethiopic", "Date::Ethiopic::ER" );

BEGIN
{
use strict;
use vars qw(
	@Days
	@DaysTranscribed
	@Months
	@MonthsTranscribed
	@ShortDays
	@ShortDaysTranscribed
	@ShortMonths
	@ShortMonthsTranscribed
);
@Days =(
	"ሰንበር ቅዳዅ",
	"ሰኑ",
	"ሰሊጝ",
	"ለጓ ወሪ ለብዋ",
	"ኣምድ",
	"ኣርብ",
	"ሰንበር ሽጓዅ"
);
@DaysTranscribed =(
	"Senber Kidakwu",
	"Senu",
	"Selling",
	"Legwa Weri Lebwa",
	"Amid",
	"Arb",
	"Senber Shigwakwu" 
);
@Months =(
	"ያኸኒ መሳቅለሪ",
	"መተሉ",
	"ምኪኤል መሽወሪ",
	"ተሕሳስሪ",
	"ልደትሪ",
	"ካብኽብቲ",
	"ክብላ",
	"ፋጅኺሪ",
	"ክቢቅሪ",
	"ምኪኤል ት(ጝዋ)ኒሪ",  # GWa is not in Unicode
	"ኰርኩ",
	"ማርያም ትሪ",
	"ጓቁመ"
);
@MonthsTranscribed =(
	"Yakheni Mesakleri",
	"Metelu",
	"Michael Meshweri",
	"Tahsasri",
	"Lidetri",
	"Kebakhibti",
	"Kibla",
	"Fajkhiri",
	"Kibikri",
	"Michael Tingwaniri",
	"Kwerku",
	"Mariam Tiri",
	"Gwakume"
);
@ShortDays =(
	"ሰ/ቅ",
	"ሰኑ ",
	"ሰሊጝ",
	"ለጓ ",
	"ኣምድ",
	"ኣርብ",
	"ሰ/ሽ"
);
@DaysTranscribed =(
	"S/K",
	"Sen",
	"Sel",
	"Leg",
	"Ami",
	"Arb",
	"S/S" 
);
@ShortMonths =(
	"ያኸኒ",
	"መተሉ",
	"ም/መ",
	"ተሕሳ",
	"ልደት",
	"ካብኽ",
	"ክብላ",
	"ፋጅኺ",
	"ክቢቅ",
	"ም/ት",
	"ኰርኩ",
	"ማርያ",
	"ጓቁመ"
);
@ShortMonthsTranscribed =(
	"Yak",
	"Met",
	"M/M",
	"Tah",
	"Lid",
	"Keb",
	"Kib",
	"Faj",
	"Kbk",
	"M/T",
	"Kwe",
	"Mar",
	"Gwa"
);
}


sub _daysep
{
	($_[0]->{_trans}) ? " Girga " : " ግርጋ ";
}


sub am
{
	($_[0]->{_trans}) ? "fj" : "ፍጅ";
}


sub pm
{
	($_[0]->{_trans}) ? "fd" : "ፍድ";
}


sub name
{
	($_[0]->{_trans}) ? "Blin" : "ብሊን";
}



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

__END__



=head1 NAME

Date::Ethiopic::ER::byn - ICalendar for the Ethiopic Calendar System.

=head1 SYNOPSIS

 use Date::Ethiopic::ER::byn;
 #
 #  typical instantiation:
 #
 my $byn = new Date::Ethiopic::ER::byn ( ical => '19950629' );

 #
 # Print Blin day and month names:
 #
 print "  Day   Name: ", $byn->day_name, "\n";
 print "  Month Name: ", $byn->month_name, "\n";

 #
 # POSIX long date format:
 #
 print "  Long  Date: ", $byn->long_date, "\n";
 print "  Long  Date: ", $byn->long_date('ethio'), "\n";

 #
 # POSIX full date format:
 #
 print "  Full  Date: ", $byn->full_date, "\n";
 #
 # Convert all numbers into Ethiopic:
 #
 print "  Full  Date: ", $byn->full_date('ethio'), "\n";

 #
 # Turn transcription on:
 #
 $byn->useTranscription ( 1 );
 print "  Full  Date: ", $byn->full_date, "\n";

 #
 # Turn transcription off:
 #
 $byn->useTranscription ( 0 );
 print "  Full  Date: ", $byn->full_date, "\n";

=head1 DESCRIPTION

The Date::Ethiopic::ER::byn module provides methods for accessing date information
in the Ethiopic calendar system.  The module will also convert dates to
and from the Gregorian system.


=head1 CREDITS

Yeha: L<http://yeha.sourceforge.net>

=head1 REQUIRES

Date::Ethiopic, which is distributed in the same package with
this file.

=head1 COPYRIGHT

This module is free software; you can redistribute it and/or modify it under the same terms as Perl itself.


=head1 BUGS

None known yet.

=head1 AUTHOR

Daniel Yacob,  L<Yacob@EthiopiaOnline.Net|mailto:Yacob@EthiopiaOnline.Net>

=head1 SEE ALSO

The Yeha Project: L<http://yeha.sourceforge.net>

=cut
