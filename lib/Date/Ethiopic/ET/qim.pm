package Date::Ethiopic::ET::qim;
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
	"ህየሲንቢት",
	"ሲኑ",
	"ሲልዝ",
	"ኦርቭ",
	"ክሊዚያ",
	"ኦርቮ",
	"ቅዳንሲንቢት"
);
@DaysTranscribed =(
	"Hyesinbit",
	"Sinu",
	"Silz",
	"Orv",
	"Cliziya",
	"Orvo",
	"Kidansinbit" 
);
@Months =(
	"ሚስክሩም",
	"ጥቅምት",
	"ህዳር",
	"ታህሳስ",
	"ጥር",
	"የካቲት",
	"መጋቢት",
	"ሚያዝያ",
	"ግንቦት",
	"ሰኔ",
	"ሀመል",
	"ናሀሽ",
	"ጳጉሜን"
);
@MonthsTranscribed =(
	"Miskrum",
	"Tekemt",
	"Hedar",
	"Tahsas",
	"Ter",
	"Yekatit",
	"Megabit",
	"Miazia",
	"Genbot",
	"Sene",
	"Hamel",
	"Nahash",
	"Pagumeyen"
);
@ShortDays =(
	"ህየሲ",
	"ሲኑ ",
	"ሲልዝ",
	"ኦርቭ",
	"ክሊዚ",
	"ኦርቮ",
	"ቅዳን"
);
@ShortDaysTranscribed =(
	"Hye",
	"Sin",
	"Sil",
	"Orv",
	"Cli",
	"Orv",
	"Kid" 
);
@ShortMonths =(
	"ሚስክ",
	"ጥቅም",
	"ህዳር",
	"ታህሳ",
	"ጥር ",
	"የካቲ",
	"መጋቢ",
	"ሚያዝ",
	"ግንቦ",
	"ሰኔ ",
	"ሀመል",
	"ናሀሽ",
	"ጳጉሜ"
);
@ShortMonthsTranscribed =(
	"Mis",
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
	"Nah",
	"Pag"
);
}


sub _daysep
{
	($_[0]->{_trans}) ? " Gira " : " ጊረ ";
}


sub am
{
	($_[0]->{_trans}) ? "Keshin" : "ቅሽን";
}


sub pm
{
	($_[0]->{_trans}) ? "Leatiza" : "ለአቲዛ";
}

sub name
{

	($_[0]->{_trans}) ? "Agaw" : "ህምራ";
}



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

__END__



=head1 NAME

Date::Ethiopic::ET::qim - ICalendar for the Ethiopic Calendar System.

=head1 SYNOPSIS

 use Date::Ethiopic::ET::qim;
 #
 #  typical instantiation:
 #
 my $qim = new Date::Ethiopic::ET::qim ( ical => '19950629' );

 #
 # Print Agaw day and month names:
 #
 print "  Day   Name: ", $qim->day_name, "\n";
 print "  Month Name: ", $qim->month_name, "\n";

 #
 # POSIX long date format:
 #
 print "  Long  Date: ", $qim->long_date, "\n";
 print "  Long  Date: ", $qim->long_date('ethio'), "\n";

 #
 # POSIX full date format:
 #
 print "  Full  Date: ", $qim->full_date, "\n";
 #
 # Convert all numbers into Ethiopic:
 #
 print "  Full  Date: ", $qim->full_date('ethio'), "\n";

 #
 # Turn transcription on:
 #
 $qim->useTranscription ( 1 );
 print "  Full  Date: ", $qim->full_date, "\n";

 #
 # Turn transcription off:
 #
 $qim->useTranscription ( 0 );
 print "  Full  Date: ", $qim->full_date, "\n";

=head1 DESCRIPTION

The Date::Ethiopic::ET::qim module provides methods for accessing date information
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
