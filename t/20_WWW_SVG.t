use Test;


BEGIN {
  my $colors = 148;
  plan tests => $colors, todo => [ ] 
}

use strict;
use Carp;

use Graphics::ColorNames 0.20, qw( hex2tuple tuple2hex );
tie my %col_www, 'Graphics::ColorNames', 'WWW';
tie my %colors, 'Graphics::ColorNames', 'SVG';

my $count = 0;
foreach my $name (keys %colors)
  {
    my @RGB = hex2tuple( $colors{$name} );
    ok(tuple2hex(@RGB), $col_www{$name} );
  }
