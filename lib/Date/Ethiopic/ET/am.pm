package Date::Ethiopic::ET::am;
use base ( "Date::Ethiopic::ET", "Date::Ethiopic" );

BEGIN
{
	use strict;
	#
	# Since in Amharic is set for the Ethiopian 
	# default, the data is in the parent class.
	#
}


sub _daysep
{
	($_[0]->{_trans}) ? " Ken " : " ቀን ";
}


sub am
{
	($_[0]->{_trans}) ? "Twat" : "ጠዋት";
}


sub pm
{
	($_[0]->{_trans}) ? "Kese'at" : "ከሰዓት";
}


sub name
{
	($_[0]->{_trans}) ? "Amharic" : "አማርኛ";
}


sub day_name
{
my ($self) = shift;

	$self->SUPER::day_name ( @_ );
}


sub short_day_name
{
my ($self) = shift;

	$self->SUPER::short_day_name ( @_ );
}


sub month_name
{
my ($self) = shift;

	$self->SUPER::month_name ( @_ );
}


sub short_month_name
{
my ($self) = shift;

	$self->SUPER::short_month_name ( @_ );
}



#########################################################
# Do not change this, Do not put anything below this.
# File must return "true" value at termination
1;
##########################################################

__END__



=head1 NAME

Date::Ethiopic::ET::am - Amharic Calendar Data for Date::Ethiopic.

=head1 SYNOPSIS

 use Date::Ethiopic::ET::am;
 #
 #  typical instantiation:
 #
 my $amh = new Date::Ethiopic::ET::am ( ical => '19950629' );

 #
 # Print Amharic day and month names:
 #
 print "  Day   Name: ", $amh->day_name, "\n";
 print "  Month Name: ", $amh->month_name, "\n";

 #
 # POSIX long date format:
 #
 print "  Long  Date: ", $amh->long_date, "\n";
 print "  Long  Date: ", $amh->long_date('ethio'), "\n";

 #
 # POSIX full date format:
 #
 print "  Full  Date: ", $amh->full_date, "\n";
 #
 # Convert all numbers into Ethiopic:
 #
 print "  Full  Date: ", $amh->full_date('ethio'), "\n";

 #
 # Turn transcription on:
 #
 $amh->useTranscription ( 1 );
 print "  Full  Date: ", $amh->full_date, "\n";

 #
 # Turn transcription off:
 #
 $amh->useTranscription ( 0 );
 print "  Full  Date: ", $amh->full_date, "\n";

=head1 DESCRIPTION

The Date::Ethiopic::ET::am module provides methods for accessing date information
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
