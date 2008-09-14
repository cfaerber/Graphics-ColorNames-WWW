package Graphics::ColorNames::WWW;

=head1 NAME

Graphics::ColorNames::WWW - WWW color names and equivalent RGB values

=head1 SYNOPSIS

  require Graphics::ColorNames::WWW;

  $NameTable = Graphics::ColorNames::WWW->NamesRgbTable();
  $RgbBlack  = $NameTable->{black};

=head1 DESCRIPTION

This modules defines color names and their associated RGB values from various
WWW specifications and implementations.

=cut

# Note: Mozilla is a subset of SVG
# Note: HTML is a subset of HTML

my @modules = (
	'SVG', 
#	'HTML',		-- subset of SVG
#	'Mozilla',	-- subset of SVG
# 	'IE',		-- subset of SVG
);

=head1 SEE ALSO

C<Graphics::ColorNames>

=head1 AUTHOR

Claus Färber <CFAERBER@cpan.org>

=head1 LICENSE

Copyright © 2005-2008 Claus Färber

Based on C<Graphics::ColorNames::HTML> Copyright © 2001-2004 Robert Rothenberg.

All rights reserved.  This program is free software; you can redistribute it
and/or modify it under the same terms as Perl itself.

=cut

require 5.006;

use strict;
use warnings;

our $VERSION = '1.00';

sub NamesRgbTable() {
  my %map = ();
  foreach (@modules) {
    eval "use Graphics::ColorNames::$_;"; die $@ if $@;
    %map = ((%map),%{eval "Graphics::ColorNames::$_->NamesRgbTable"});
  }
  return \%map;
}

1;

__END__
