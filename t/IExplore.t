use Test;


BEGIN {
  my $colors = 140;
  plan tests => 6 + $colors, todo => [ ] 
}

use strict;
use Carp;

use Graphics::ColorNames 0.20, qw( hex2tuple tuple2hex );
ok(1);

tie my %colors, 'Graphics::ColorNames', 'IE';
ok(1);

ok(keys %colors, 140);

my $count = 0;
foreach my $name (keys %colors)
  {
    my @RGB = hex2tuple( $colors{$name} );
    ok(tuple2hex(@RGB), $colors{$name} );
  }

ok(uc $colors{'white'}, 'FFFFFF');
ok(uc $colors{'blue'}, '0000FF');
ok(uc $colors{'cyan'}, '00FFFF');
