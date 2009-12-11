package Graphics::ColorNames::SVG;

require 5.006;

use strict;
use warnings;

use Graphics::ColorNames::WWW();

our $VERSION = '1.10';

*NamesRgbTable = \&Graphics::ColorNames::WWW::NamesRgbTable;

1;

=encoding utf8

=head1 NAME

Graphics::ColorNames::SVG - SVG color names and equivalent RGB values

=head1 SYNOPSIS

  require Graphics::ColorNames::SVG;

  $NameTable = Graphics::ColorNames::SVG->NamesRgbTable();
  $RgbBlack  = $NameTable->{black};

=head1 DESCRIPTION

This module defines color names and their associated RGB values
from the SVG 1.2 Specification.

It is actually an alias for L<Graphic::ColorNames::WWW>. This may
change should the specs happen to diverge.

=head1 AUTHOR

Claus Färber <CFAERBER@cpan.org>

=head1 LICENSE

Copyright © 2008-2009 Claus Färber.

All rights reserved.  This program is free software; you can
redistribute it and/or modify it under the same terms as Perl
itself.

=cut
