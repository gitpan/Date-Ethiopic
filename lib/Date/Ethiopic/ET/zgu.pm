package Date::Ethiopic::ET::zgu;
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
	"ግድርሰንበት",
	"ውጠት",
	"መገርገቢያ",
	"ሐርሴ",
	"ከምስ",
	"ጅማት",
	"አሰንበት"
);
@DaysTranscribed =(
	"Gidrisenbet",
	"Witet",
	"Jegergebiya",
	"Hersie",
	"Kemis",
	"Jimat",
	"Asenbet"
);
@Months =(
	"እዳር", # ህዳር
	"መሼ",
	"እንቶጎት",
	"መንገሥ",
	"ወቶ",
	"ማዜ",
	"አስሬ",
	"ሰኜ",
	"አምሌ", # ሐምሌ
	"ናሴ",
	"መስሮ",
	"ጥቅምት",
	"ቃግሜ" # ቃቅሜ
);
@MonthsTranscribed =(
	"Idar",
	"Meshie",
	"Intogot",
	"Menges",
	"Weto",
	"Mazie",
	"Asrie",
	"Segnie",
	"Amlie",
	"Nasie",
	"Meshro",
	"Tekemt",
	"Kagmie"
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
	"እዳር", # ህዳር
	"መሼ ",
	"እንቶ",
	"መንገ",
	"ወቶ ",
	"ማዜ ",
	"አስሬ",
	"ሰኜ ",
	"አምሌ", # ሐምሌ
	"ናሴ",
	"መስሮ",
	"ጥቅም",
	"ቃግሜ" # ቃቅሜ
);
@ShortMonthsTranscribed =(
	"Ida",
	"Mes",
	"Int",
	"Men",
	"Wet",
	"Maz",
	"Asr",
	"Seg",
	"Aml",
	"Nas",
	"Mes",
	"Tek",
	"Kag"
);
}


sub _daysep
{
	($_[0]->{_trans}) ? " Malit " : " ማልት ";
}


sub name
{
	($_[0]->{_trans}) ? "Siltie" : "ስልጤ";
}



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

__END__



=head1 NAME

Date::Ethiopic::ET::zgu - ICalendar for the Ethiopic Calendar System.

=head1 SYNOPSIS

 use Date::Ethiopic::ET::zgu;
 #
 #  typical instantiation:
 #
 my $zgu = new Date::Ethiopic::ET::zgu ( ical => '19950629' );

 #
 # Print Siltie day and month names:
 #
 print "  Day   Name: ", $zgu->day_name, "\n";
 print "  Month Name: ", $zgu->month_name, "\n";

 #
 # POSIX long date format:
 #
 print "  Long  Date: ", $zgu->long_date, "\n";
 print "  Long  Date: ", $zgu->long_date('ethio'), "\n";

 #
 # POSIX full date format:
 #
 print "  Full  Date: ", $zgu->full_date, "\n";
 #
 # Convert all numbers into Ethiopic:
 #
 print "  Full  Date: ", $zgu->full_date('ethio'), "\n";

 #
 # Turn transcription on:
 #
 $zgu->useTranscription ( 1 );
 print "  Full  Date: ", $zgu->full_date, "\n";

 #
 # Turn transcription off:
 #
 $zgu->useTranscription ( 0 );
 print "  Full  Date: ", $zgu->full_date, "\n";

=head1 DESCRIPTION

The Date::Ethiopic::ET::zgu module provides methods for accessing date information
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
