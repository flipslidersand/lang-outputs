use strict;
use warnings;
local $/;
my $text = lc(<STDIN>);
my %count;
$count{$_}++ for $text =~ /[a-z]+/g;
my @words = sort { $count{$b} <=> $count{$a} || $a cmp $b } keys %count;
print "$_ $count{$_}\n" for grep { defined } @words[0 .. ($#words < 2 ? $#words : 2)];
