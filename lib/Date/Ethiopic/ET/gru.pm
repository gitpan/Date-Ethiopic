package Date::Ethiopic::ET::gru;
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
	"ውርሰንበት",
	"ውጠት",
	"መናግ",
	"ኧሮብ",
	"ሐሙስ",
	"ዓዳረ",
	"ቅዳምሰንበት"
);
@DaysTranscribed =(
	"Wirsenbet",
	"Witet",
	"Menag",
	"Erob",
	"Hemus",
	"Adare",
	"Qidamsenbet"
);
#
#  Months are the same as Amharic
#
@Months =(
	"መስከረም",
	"ጥቅምት",
	"ኅዳር",
	"ታኅሣሥ",
	"ጥር",
	"የካቲት",
	"መጋቢት",
	"ሚያዝያ",
	"ግንቦት",
	"ሰኔ",
	"ሐምሌ",
	"ነሐሴ",
	"ጳጉሜን"
);
@MonthsTranscribed =(
	"Meskerem",
	"Tekemt",
	"Hedar",
	"Tahsas",
	"Ter",
	"Yekatit",
	"Megabit",
	"Miazia",
	"Genbot",
	"Sene",
	"Hamle",
	"Nehasse",
	"Pagumen"
);
@ShortDays =(
	"ውርሰ",
	"ውጠት",
	"መናግ",
	"ኧሮብ",
	"ሐሙስ",
	"ዓዳረ",
	"ቅዳም"
);
@ShortDaysTranscribed =(
	"Wir",
	"Wit",
	"Men",
	"Ero",
	"Hem",
	"Ada",
	"Qid"
);
@ShortMonths =(
	"መስከ",
	"ጥቅም",
	"ኅዳር",
	"ታኅሣ",
	"ጥር ",
	"የካቲ",
	"መጋቢ",
	"ሚያዝ",
	"ግንቦ",
	"ሰኔ ",
	"ሐምሌ",
	"ነሐሴ",
	"ጳጉሜ"
);
@ShortMonthsTranscribed =(
	"Mes",
	"Tek",
	"Hed",
	"Tah",
	"Ter",
	"Yek",
	"Meg",
	"Mia",
	"Gen",
	"Sen",
	"Ham",
	"Neh",
	"Pag"
);
}


sub _daysep
{
	($_[0]->{_trans}) ? " Malit " : " ማልት ";
}


sub name
{
	($_[0]->{_trans}) ? "Sodo" : "ሶዶ";
}



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

__END__



=head1 NAME

Date::Ethiopic::ET::gru - ICalendar for the Ethiopic Calendar System.

=head1 SYNOPSIS

 use Date::Ethiopic::ET::gru;
 #
 #  typical instantiation:
 #
 my $gru = new Date::Ethiopic::ET::gru ( ical => '19950629' );

 #
 # Print Sodo day and month names:
 #
 print "  Day   Name: ", $gru->day_name, "\n";
 print "  Month Name: ", $gru->month_name, "\n";

 #
 # POSIX long date format:
 #
 print "  Long  Date: ", $gru->long_date, "\n";
 print "  Long  Date: ", $gru->long_date('ethio'), "\n";

 #
 # POSIX full date format:
 #
 print "  Full  Date: ", $gru->full_date, "\n";
 #
 # Convert all numbers into Ethiopic:
 #
 print "  Full  Date: ", $gru->full_date('ethio'), "\n";

 #
 # Turn transcription on:
 #
 $gru->useTranscription ( 1 );
 print "  Full  Date: ", $gru->full_date, "\n";

 #
 # Turn transcription off:
 #
 $gru->useTranscription ( 0 );
 print "  Full  Date: ", $gru->full_date, "\n";

=head1 DESCRIPTION

The Date::Ethiopic::ET::gru module provides methods for accessing date information
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
