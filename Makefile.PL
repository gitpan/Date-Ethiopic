use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
	'NAME'		=> 'Date::Ethiopic',
	'DISTNAME'	=> 'Date-Ethiopic',
	'VERSION_FROM'	=> 'lib/Date/Ethiopic.pm', # finds $VERSION
	'AUTHOR'	=> "Daniel Yacob <Yaocb\@EthiopiaOnline.Net>",
	'ABSTRACT'	=> "ICalendar for the Ethiopic Calendar System.",
	PREREQ_PM 	=> { 'Date::ICal' => 0, 'Convert::Ethiopic::Lite::Number' => 0 },

	dist			=>	{
		COMPRESS        =>	"gzip -9f",
		SUFFIX          =>	"gz",
		POSTOP          =>	'mv $(DISTNAME)-$(VERSION).tar.gz ../'
	}
);
