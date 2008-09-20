use Test;

BEGIN {
  plan tests => 5, todo => [ ] 
}

use strict;
use Carp;

use Graphics::ColorNames 0.20, qw( hex2tuple tuple2hex );
ok(1);

tie my %colors, 'Graphics::ColorNames', 'WWW';
ok(1);

ok(exists($colors{"fuchsia"}));
ok(exists($colors{"fuscia"}));
ok($colors{"fuscia"} eq $colors{"fuchsia"});
