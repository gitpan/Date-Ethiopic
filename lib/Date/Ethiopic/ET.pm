package Date::Ethiopic::ET;


BEGIN
{
	require 5.000;

	use strict;

	use vars qw(
		%EthiopianHolidays
		%EthiopianHolidaysTranscribed
	);

	#
	# Legal Holidays, this will be localized later.
	# Some verification is also needed.
	#
	# double check how leap year impacts christmas, my memory
	# is that is moves backwars 29->28 following leap year
	# such that it fixes on Jan. 7.
	#
	%EthiopianHolidays =(
		"እንቍጣጣሽ"		=>   [1,1],  #  መስከረም   1
		"የመስቀል በዓል"		=>  [17,1],  #  መስከረም  17
		"ገና"			=>  [29,4],  #  ታኅሣሥ   29/28 ?
		"ጥምቀት"			=>  [11,5],  #  ጥር     11
		"አድዋ ድል መታሰቢያ"		=>  [23,6],  #  የካቲት   23
		"የስቅለት በዓል"		=> ['?',8],  #  ሚያዝያ -Final Friday
		"የትንሣኤ በዓል"		=> ['?',8],  #  ሚያዝያ -Final Sunday
		"የዓለም ላባደሮች ቀን"		=>  [23,8],  #  May     1
		"የኢትዮጵያ አርበኞች ቀን"	=>  [27,8],  #  ሚያዝያ   27
		"ደርግ የወደቀበት"		=>  [20,9]   #  ግንቦት   20
	);
	%EthiopianHolidaysTranscribed =(
	);
}


use utf8;
sub _sep
{
	($_[0]->{_trans}) ? ", " : "፣ ";
}


sub am
{
	"AM";
}


sub pm
{
	"PM";
}


sub bc
{
use utf8;
	($_[0]->{_trans}) ? "A/A" : "ዓ/ዓ";
}


sub ad
{
use utf8;
	($_[0]->{_trans}) ? "A/M" : "ዓ/ም";
}



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

__END__



=head1 NAME

Date::Ethiopic::ET - ICalendar for the Ethiopic Calendar System.

=head1 DESCRIPTION

The Date::Ethiopic::ET module is a base class for modules under
the Date::Ethiopic::ET namespace, it is not intended for independent use.

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

=cut
