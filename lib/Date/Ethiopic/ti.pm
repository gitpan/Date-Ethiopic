package Date::Ethiopic::ti;
use base ( "Date::Ethiopic" );

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
	"ሰንበት",
	"ሰኑይ",
	"ሰሉስ",
	"ረቡዕ",
	"ሓሙስ",
	"ዓርቢ",
	"ቀዳም"
);
@DaysTranscribed =(
	"Sennebet",
	"Senoi",
	"Sellus",
	"Rebu",
	"Hamus",
	"Arbi",
	"Kidam" 
);
#@OldDays =(
#	"ሰንበት",
#	"ሰኑይ",
#	"ሠሉስ",
#	"ረቡዕ",
#	"ኃሙስ",
#	"ዓርቢ",
#	"ቀዳም"
#);
@Months =(
	"መስከረም",
	"ጥቅምቲ",
	"ሕዳር",
	"ታሕሳስ",
	"ጥሪ",
	"ለካቲት",
	"መጋቢት",
	"ሚያዝያ",
	"ግንቦት",
	"ሰነ",
	"ሓምለ",
	"ነሓሰ",
	"ጳጉሜን"
);
@MonthsTranscribed =(
	"Meskerem",
	"Tekemti",
	"Hedar",
	"Tahsas",
	"Teri",
	"Lekatit",
	"Megabit",
	"Miazia",
	"Genbot",
	"Sene",
	"Hamle",
	"Nehasse",
	"Pagumen"
);
@ShortDays =(
	"ሰንበ",
	"ሰኑይ",
	"ሰሉስ",
	"ረቡዕ",
	"ሓሙስ",
	"ዓርቢ",
	"ቀዳም"
);
@ShortDaysTranscribed =(
	"Snb",
	"Sno",
	"Sel",
	"Reb",
	"Ham",
	"Arb",
	"Kid" 
);
@ShortMonths =(
	"መስከ",
	"ጥቅም",
	"ሕዳር",
	"ታሕሳ",
	"ጥሪ ",
	"ለካቲ",
	"መጋቢ",
	"ሚያዝ",
	"ግንቦ",
	"ሰነ ",
	"ሓምለ",
	"ነሓሰ",
	"ጳጉሜ"
);
@ShortMonthsTranscribed =(
	"Mes",
	"Tek",
	"Hed",
	"Tah",
	"Ter",
	"Lek",
	"Meg",
	"Mia",
	"Gen",
	"Sen",
	"Ham",
	"Neh",
	"Pag"
);
}


#
#  auto utf8 doesn't penetrate several levels of inheritence
#
use utf8;


sub _daysep
{
	($_[0]->{_trans}) ? " Me'alti " : " መዓልቲ "; # ዕለት
}


sub am
{
	($_[0]->{_trans}) ? "Neguho se'ate" : "ንጉሆ ሰዓተ";
}


sub pm
{
	($_[0]->{_trans}) ? "dehir se'at" : "ድሕር ሰዓት";
}


sub name
{
	($_[0]->{_trans}) ? "Tigrinya" : "ትግርኛ";
}

#
# use utf8; didn't help this far down.
#
# we need Encode to set the utf8 flag on
#
if ( $] >= 5.006 ) {
require Encode;
}

sub day_name
{
my ( $self, $day ) = @_;

	$day ||= $self->_EthiopicToAbsolute;

	$day %= 7;

	my $z = ( $self->{_trans} ) ? $DaysTranscribed[$day] : $Days[$day] ;
	Encode::_utf8_on($z) if ( $] >= 5.006 );
	$z;
}


sub short_day_name
{
my ( $self, $day ) = @_;

	$day ||= $self->_EthiopicToAbsolute;

	$day %= 7;

	my $z = ( $self->{_trans} ) ? $ShortDaysTranscribed[$day] : $ShortDays[$day] ;
	Encode::_utf8_on($z) if ( $] >= 5.006 );
	$z;
}


sub month_name
{
my ( $self, $month ) = @_;

	$month ||= $self->month;

	$month -= 1;

	my $z = ( $self->{_trans} ) ? $MonthsTranscribed[$month] : $Months[$month] ;
	Encode::_utf8_on($z) if ( $] >= 5.006 );
	$z;
}


sub short_month_name
{
my ( $self, $month ) = @_;

	$month ||= $self->month;

	$month -= 1;

	my $z = ( $self->{_trans} ) ? $ShortMonthsTranscribed[$month] : $ShortMonths[$month] ;
	Encode::_utf8_on($z) if ( $] >= 5.006 );
	$z;
}



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

__END__



=head1 NAME

Date::Ethiopic::ti - ICalendar for the Ethiopic Calendar System.

=head1 DESCRIPTION

The Date::Ethiopic::ti module is a base class for Date::Ethiopic::ER::ti
and Date::Ethiopic::ET::ti and is not intended for independent use.


=head1 CREDITS

Yeha: L<http://yeha.sourceforge.net>

=head1 REQUIRES

Date::Ethiopic, which is distributed in the same package with
this file.

=head1 COPYRIGHT

This module is free software; you can redistribute it and/or modify it under the same terms as Perl itself.


=head1 BUGS

The use of "use utf8" will break for older versions of Perl.  Feel free
to comment out this line.

=head1 AUTHOR

Daniel Yacob,  L<Yacob@EthiopiaOnline.Net|mailto:Yacob@EthiopiaOnline.Net>

=head1 SEE ALSO

Date::Ethiopic::ER::ti
Date::Ethiopic::ET::ti

=cut
