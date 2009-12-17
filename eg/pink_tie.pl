#!/usr/bin/perl

use strict;
use utf8;

use Graphics::ColorNames;

tie my %colors, 'Graphics::ColorNames', 'WWW';

print "pink: ", $colors{'pink'}, "\n";
