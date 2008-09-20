# $Id$
#
package Graphics::ColorNames::CSS;

require 5.006;

use strict;
use warnings;

use Graphics::ColorNames::WWW();

our $VERSION = '1.10';

*NamesRgbTable = \&Graphics::ColorNames::WWW::NamesRgbTable;

1;

=encoding utf8

=head1 NAME

Graphics::ColorNames::CSS - CSS color names and equivalent RGB values

=head1 SYNOPSIS

  require Graphics::ColorNames::CSS;

  $NameTable = Graphics::ColorNames::CSS->NamesRgbTable();
  $RgbBlack  = $NameTable->{black};

=head1 DESCRIPTION

This module defines color names and their associated RGB values
from the CSS Color Module Level 3 Working Draft (2008-07-21).

It is actually an alias for L<Graphic::ColorNames::WWW>.

=head1 AUTHOR

Claus Färber <CFAERBER@cpan.org>

=head1 LICENSE

Copyright © 2005-2008 Claus Färber.

All rights reserved.  This program is free software; you can
redistribute it and/or modify it under the same terms as Perl
itself.

=cut
