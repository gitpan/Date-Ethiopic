package Date::Ethiopic::har;
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
	"አልሓድ",
	"ኢስኒን",
	"ሰላሣ",
	"አርብአ",
	"ከሚስ",
	"ጁምአ",
	"ሰብቲ"
);
@DaysTranscribed =(
	"Alhad",
	"Isnin",
	"Selasa",
	"Arbaa",
	"Khamis",
	"Juma",
	"Sebti" 
);
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
	"አልሓ",
	"ኢስኒ",
	"ሰላሣ",
	"አርብ",
	"ከሚስ",
	"ጁምአ",
	"ሰብቲ"
);
@ShortDaysTranscribed =(
	"Alh",
	"Isn",
	"Sel",
	"Arb",
	"Kha",
	"Jum",
	"Seb" 
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
	($_[0]->{_trans}) ? " Ayam " : " አያም ";
}


sub am
{
	($_[0]->{_trans}) ? "soza" : "ሶዛ";
}


sub pm
{
	($_[0]->{_trans}) ? "salat baher" : "ሳላት ባሕር";
}


sub
{
	($_[0]->{_trans}) ? "Harari" : "አደርኛ";
}



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

__END__



=head1 NAME

Date::Ethiopic::ET::har - ICalendar for the Ethiopic Calendar System.

=head1 SYNOPSIS

 use Date::Ethiopic::ET::har;
 #
 #  typical instantiation:
 #
 my $har = new Date::Ethiopic::ET::har ( ical => '19950629' );

 #
 # Print Harari day and month names:
 #
 print "  Day   Name: ", $har->day_name, "\n";
 print "  Month Name: ", $har->month_name, "\n";

 #
 # POSIX long date format:
 #
 print "  Long  Date: ", $har->long_date, "\n";
 print "  Long  Date: ", $har->long_date('ethio'), "\n";

 #
 # POSIX full date format:
 #
 print "  Full  Date: ", $har->full_date, "\n";
 #
 # Convert all numbers into Ethiopic:
 #
 print "  Full  Date: ", $har->full_date('ethio'), "\n";

 #
 # Turn transcription on:
 #
 $har->useTranscription ( 1 );
 print "  Full  Date: ", $har->full_date, "\n";

 #
 # Turn transcription off:
 #
 $har->useTranscription ( 0 );
 print "  Full  Date: ", $har->full_date, "\n";

=head1 DESCRIPTION

The Date::Ethiopic::ET::har module provides methods for accessing date information
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
