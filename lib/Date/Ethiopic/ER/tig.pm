package Date::Ethiopic::ER::tig;
use base ( "Date::Ethiopic::ER", "Date::Ethiopic" );

BEGIN
{
	use strict;
	use vars qw(
		@Days
		@ShortDays
	);
	@Days =(
		[ "ሰንበት ዓባይ",	"Senbet Abay" ],
		[ "አትኒን",	"Altnin"      ],
		[ "አታሉት",	"Atalut"      ],
		[ "አራቦዐ",	"Arerba'a"    ],  # አረርባዓ
		[ "ኻሚስ",	"Alkamis"     ],
		[ "ጅምዓት",	"Aljim'at"    ],
		[ "ሰንበት ንኢሽ",	"Senbet Nish" ],
	);
	@ShortDays =(
		[ "ሰ/ዓ",	"S/A" ],
		[ "አትኒ",	"Alt" ],
		[ "አታሉ",	"Ata" ],
		[ "አራቦ",	"Are" ],
		[ "ኻሚስ",	"Alk" ],
		[ "ጅምዓ",	"Alj" ],
		[ "ሰ/ን",	"S/N" ],
	);
	require Date::Ethiopic::ti;
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
	Date::Ethiopic::ti::short_month_name ( @_ );
}


#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

__END__



=head1 NAME

Date::Ethiopic::ER::tig - Tigre Calendar Data for Date::Ethiopic.

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
