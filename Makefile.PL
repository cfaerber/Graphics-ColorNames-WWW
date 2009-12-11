use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Graphics::ColorNames::WWW',
    'VERSION_FROM'	=> 'lib/Graphics/ColorNames/WWW.pm',
    'PREREQ_PM'		=> {
		'Graphics::ColorNames'	=> 0.32,
	},

$] < 5.005 ? () : (
    'ABSTRACT_FROM'	=> 'lib/Graphics/ColorNames/WWW.pm',
    'AUTHOR'     	=> 'Claus Faerber <CFAERBER@cpan.org>',
    'LICENSE'		=> 'perl',
),

$ExtUtils::MakeMaker::VERSION < 6.18 ? () : (
    'SIGN'		=> 1,
),

$ExtUtils::MakeMaker::VERSION < 6.45 ? () : (
    'META_MERGE'	=> { 
	'build_requires' => {
		'Test::More' => 0, 
		'Test::NoWarnings' => 0,
	    },
	'resources' => {
		'homepage' => 'http://search.cpan.org/dist/Graphics-ColorNames-WWW',
		'repository' => 'http://github.com/cfaerber/Graphics-ColorNames-WWW',
	    },
    },
),
);

sub MY::postamble {
return <<EOF
release: release-cpan

release-cpan:
	cpan-upload \$(DISTVNAME).tar\$(SUFFIX)
EOF
}
