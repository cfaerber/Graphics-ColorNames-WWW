use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Graphics::ColorNames::WWW',
    'VERSION_FROM'	=> 'WWW.pm', # finds $VERSION
    'PREREQ_PM'		=> {
		'Graphics::ColorNames'	=> 0.32,
	},
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'WWW.pm', # retrieve abstract from module
       AUTHOR     => 'Claus Färber <perl@faerber.muc.de>') : ()),
);
