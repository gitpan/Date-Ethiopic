package Date::Ethiopic::gez;
use base ( "Date::Ethiopic" );

BEGIN
{
use strict;
use utf8;
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
	"አኀዱ",  # እኁድ
	"ሰኑይ",  # ዕብራ
	"ሠሉስ",  # ምንትው
	"ራብዕ",  # ረቡዕ
	"ኃምስ",
	"ዓርበ",
	"ቀዳም"   # ቀዳሚት
);
@Months =(
	"ከረመ",
	"ጠቀመ",
	"ኀደረ",
	"ኀሠሠ",
	"ጠሐረ",  # ጥሕረ
	"ከተተ",
	"መገበ",
	"አኀዘ",
	"ግንባት",
	"ሠንየ",
	"ሐመለ",
	"ነሐሰ",
	"ጳጕሜን"
);
@DaysTranscribed =(
	"Ahadu",
	"Senuy",
	"Sellus",
	"Rabi",
	"Hamis",
	"Arbe",
	"Kedam"
);
@MonthsTranscribed =(
	"Kereme",
	"Tekeme",
	"Hedere",
	"Hesese",
	"Tehere",
	"Ketete",
	"Megebe",
	"Aheze",
	"Genbat",
	"Senye",
	"Hemele",
	"Nehese",
	"Pagumen"
);
@ShortDays =(
	"አኀዱ",
	"ሰኑይ",
	"ሠሉስ",
	"ራብዕ",
	"ኃምስ",
	"ዓርበ",
	"ቀዳም"
);
@ShortMonths =(
	"ከረመ",
	"ጠቀመ",
	"ኀደረ",
	"ኀሠሠ",
	"ጠሐረ",
	"ከተተ",
	"መገበ",
	"አኀዘ",
	"ግንባ",
	"ሠንየ",
	"ሐመለ",
	"ነሐሰ",
	"ጳጕሜ"
);
@ShortDaysTranscribed =(
	"Aha",
	"Sen",
	"Sel",
	"Rab",
	"Ham",
	"Arb",
	"Ked"
);
@ShortMonthsTranscribed =(
	"Ker",
	"Tek",
	"Hed",
	"Hes",
	"Teh",
	"Ket",
	"Meg",
	"Ahe",
	"Gen",
	"Sen",
	"Hem",
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
	($_[0]->{_trans}) ? " Ken " : " ቀን ";
}


sub _sep
{
	($_[0]->{_trans}) ? ", " : "፥ ";
}


sub am
{
	# this is tigrinya
	#
	($_[0]->{_trans}) ? "Neguho se'ate" : "ንጉሆ ሰዓተ";
}


sub pm
{
	# this is tigrinya
	#
	($_[0]->{_trans}) ? "dehir se'at" : "ድሕር ሰዓት";
}


sub name
{
	($_[0]->{_trans}) ? "Ge'ez" : "ግዕዝ";
}


sub day_name
{
my ( $self, $day ) = @_;

	$day ||= $self->_EthiopicToAbsolute;

	$day %= 7;


	( $self->{_trans} ) ? $DaysTranscribed[$day] : $Days[$day] ;
}


sub short_day_name
{
my ( $self, $day ) = @_;

	$day ||= $self->_EthiopicToAbsolute;

	$day %= 7;

	my $pkg = ref($self);

	( $self->{_trans} ) ? $ShortDaysTranscribed[$day] : $ShortDays[$day] ;
}


sub month_name
{
my ( $self, $month ) = @_;

	$month ||= $self->month;

	$month -= 1;

	my $pkg = ref($self);

	( $self->{_trans} ) ? $MonthsTranscribed[$month] : $Months[$month] ;
}


sub short_month_name
{
my ( $self, $month ) = @_;

	$month ||= $self->month;

	$month -= 1;

	my $pkg = ref($self);

	( $self->{_trans} ) ? $ShortMonthsTranscribed[$month] : $ShortMonths[$month] ;
}



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

__END__



=head1 NAME

Date::Ethiopic::gez - ICalendar for the Ethiopic Calendar System.

=head1 DESCRIPTION

The Date::Ethiopic::gez module is a base class for Date::Ethiopic::ER::gez
and Date::Ethiopic::ET::gez and is not intended for independent use.  The
translations for AM and PM are actually Tigrinya.


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

Date::Ethiopic::ER::gez
Date::Ethiopic::ET::gez

=cut
