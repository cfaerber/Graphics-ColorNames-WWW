#!/usr/bin/perl

use strict;
use utf8;

use Graphics::ColorNames;

my $colors = new Graphics::ColorNames('WWW');

print "pink: ", $colors->hex('pink'), "\n";
