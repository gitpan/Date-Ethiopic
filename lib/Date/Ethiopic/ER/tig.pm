package Date::Ethiopic::ER::tig;
use base ( "Date::Ethiopic", "Date::Ethiopic::ER" );

BEGIN
{
require Date::Ethiopic::ti;  # use Tigrinya months
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
	"ሰንበት ዓባይ",
	"አትኒን",
	"አታሉት",
	"አራቦዐ",  # አረርባዓ
	"ኻሚስ",
	"ጅምዓት",
	"ሰንበት ንኢሽ"
);
@DaysTranscribed =(
	"Senbet Abay",
	"Altnin",
	"Atalut",
	"Arerba'a",
	"Alkamis",
	"Aljim'at",
	"Senbet Nish"
);
@ShortDays =(
	"ሰ/ዓ",
	"አትኒ",
	"አታሉ",
	"አራቦ",
	"ኻሚስ",
	"ጅምዓ",
	"ሰ/ን"
);
@ShortDaysTranscribed =(
	"S/A",
	"Alt",
	"Ata",
	"Are",
	"Alk",
	"Alj",
	"S/N"
);
}


sub _daysep
{
	($_[0]->{_trans}) ? " Yom " : " ዮም ";
}


sub name
{
	($_[0]->{_trans}) ? "Tigre" : "ትግረ";
}


sub month_name
{
	Date::Ethiopic::ti::month_name ( @_ );
}

sub short_month_name
{
	Date::Ethiopic::ti::month_name ( @_ );
}


#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

__END__



=head1 NAME

Date::Ethiopic::ER::tig - ICalendar for the Ethiopic Calendar System.

=head1 SYNOPSIS

 use Date::Ethiopic::ER::tig;
 #
 #  typical instantiation:
 #
 my $tig = new Date::Ethiopic::ER::tig ( ical => '19950629' );

 #
 # Print Blin day and month names:
 #
 print "  Day   Name: ", $tig->day_name, "\n";
 print "  Month Name: ", $tig->month_name, "\n";

 #
 # POSIX long date format:
 #
 print "  Long  Date: ", $tig->long_date, "\n";
 print "  Long  Date: ", $tig->long_date('ethio'), "\n";

 #
 # POSIX full date format:
 #
 print "  Full  Date: ", $tig->full_date, "\n";
 #
 # Convert all numbers into Ethiopic:
 #
 print "  Full  Date: ", $tig->full_date('ethio'), "\n";

 #
 # Turn transcription on:
 #
 $tig->useTranscription ( 1 );
 print "  Full  Date: ", $tig->full_date, "\n";

 #
 # Turn transcription off:
 #
 $tig->useTranscription ( 0 );
 print "  Full  Date: ", $tig->full_date, "\n";

=head1 DESCRIPTION

The Date::Ethiopic::ER::tig module provides methods for accessing date information
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
