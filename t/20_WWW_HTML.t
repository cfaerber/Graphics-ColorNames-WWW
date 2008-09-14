use Test;


BEGIN {
  my $colors = 17;
  plan tests => $colors, todo => [ ] 
}

use strict;
use Carp;

use Graphics::ColorNames 0.20, qw( hex2tuple tuple2hex );
tie my %colors, 'Graphics::ColorNames', 'HTML';
tie my %col_www, 'Graphics::ColorNames', 'WWW';

my $count = 0;
foreach my $name (keys %colors)
  {
    my @RGB = hex2tuple( $colors{$name} );
    ok($name.'-'.tuple2hex(@RGB), $name.'-'.$col_www{$name} );
  }
