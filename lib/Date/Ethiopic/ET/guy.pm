package Date::Ethiopic::ET::guy;
use base ( "Date::Ethiopic", "Date::Ethiopic::ET" );

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
	"ውርሰምበት",
	"ውጠት",
	"ወጠት መረጋ", # መገርገብያ
	"ኧሮ",      # ኧረው
	"አ(ምወ)ስ",  # ኸሚስ  amWes but mWe isn't in Unicode
	"ጅማት",     # አዳረ
	"ቀጣ ሰምበት"
);
@DaysTranscribed =(
	"Wirsenbet",
	"Witet",
	"Witet Merega",
	"Ero",
	"Amwes",
	"Jimat",
	"Ketta Sembet"
);
@Months =(
	"ይዳር",
	"መሸ",
	"ጥርር",  # እንተጐጐት
	"መንገስ",
	"ወቶ",
	"ማንዝያ",
	"ግር(ምወ)ት", # (mWe) is not in unicode
	"ሰርየ",
	"ናሴ",
	"አምሬ",
	"መስኸሮ",
	"ጥቅምት",
	""
);
@MonthsTranscribed =(
	"Yidar",
	"Mesh",
	"Terir",
	"Menges",
	"Weto",
	"Manziya",
	"Germwet",
	"Serye",
	"Nasie",
	"Amro",
	"Meskhero",
	"Tekemt",
	""
);
@ShortDays =(
	"ግድር",
	"ውጠት",
	"መገር",
	"ሐርሴ",
	"ከምስ",
	"ጅማት",
	"አሰን"
);
@ShortDaysTranscribed =(
	"Gid",
	"Wit",
	"Jeg",
	"Her",
	"Kem",
	"Jim",
	"Ase"
);
@ShortMonths =(
	"ይዳር",
	"መሸ ",
	"ጥርር",
	"መንገ",
	"ወቶ ",
	"ማንዝ",
	"ግርም",
	"ሰርየ",
	"ናሴ ",
	"አምሬ",
	"መስኸ",
	"ጥቅም",
	""
);
@ShortMonthsTranscribed =(
	"Yid",
	"Msh",
	"Ter",
	"Men",
	"Wet",
	"Man",
	"Ger",
	"Ser",
	"Nas",
	"Amr",
	"Mes",
	"Tek",
	""
);
}


sub _daysep
{
	($_[0]->{_trans}) ? " Kere " : " ከረ ";
}


sub name
{
	($_[0]->{_trans}) ? "Sebatbeit" : "ሰባትቤት";
}



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

__END__



=head1 NAME

Date::Ethiopic::ET::guy - ICalendar for the Ethiopic Calendar System.

=head1 SYNOPSIS

 use Date::Ethiopic::ET::guy;
 #
 #  typical instantiation:
 #
 my $guy = new Date::Ethiopic::ET::guy ( ical => '19950629' );

 #
 # Print Sebatbeit day and month names:
 #
 print "  Day   Name: ", $guy->day_name, "\n";
 print "  Month Name: ", $guy->month_name, "\n";

 #
 # POSIX long date format:
 #
 print "  Long  Date: ", $guy->long_date, "\n";
 print "  Long  Date: ", $guy->long_date('ethio'), "\n";

 #
 # POSIX full date format:
 #
 print "  Full  Date: ", $guy->full_date, "\n";
 #
 # Convert all numbers into Ethiopic:
 #
 print "  Full  Date: ", $guy->full_date('ethio'), "\n";

 #
 # Turn transcription on:
 #
 $guy->useTranscription ( 1 );
 print "  Full  Date: ", $guy->full_date, "\n";

 #
 # Turn transcription off:
 #
 $guy->useTranscription ( 0 );
 print "  Full  Date: ", $guy->full_date, "\n";

=head1 DESCRIPTION

The Date::Ethiopic::ET::guy module provides methods for accessing date information
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
