#!/usr/bin/perl
use strict;
use warnings;
my $search_word = shift or return;
$search_word = uc "$search_word\n";

my %index = (
  A => 601,
  B => 1796502,
  C => 3293436,
  D => 6039049,
  E => 7681559,
  F => 8833301,
  G => 10034091,
  H => 10926753,
  I => 11930292,
  J => 13148994,
  K => 13380269,
  L => 13586035,
  M => 14532408,
  N => 15916448,
  O => 16385339,
  P => 17042770,
  Q => 19439223,
  R => 19610041,
  S => 21015876,
  T => 24379537,
  U => 25941093,
  V => 26405366,
  W => 26925697,
  X => 27748359,
  Y => 27774096,
  Z => 27866401,
);

my @script_path = split '/', $0;
pop @script_path;
my $dictionary_path = join '/',  @script_path, 'webster-1913.txt';

my $start = $index{ substr $search_word, 0, 1 };
open my $dict, '<', $dictionary_path or die $!;
seek $dict, $start, 0;

my $found_entry = undef;
my $entry_pattern = qr/^[A-Z][A-Z0-9 ;-]*\n/;
while (<$dict>) {
  next unless /$entry_pattern/;

  if ($search_word eq $_) {
    $found_entry = 1;
    my $text = $_;
    while (1) {
     my $next_line = readline $dict;
     if ($next_line =~ /$entry_pattern/) {
       seek $dict, -length($next_line), 1;
       last;
     }
     $text .= $next_line;
    }
    print $text;
  }
  last if $found_entry && ($search_word cmp $_) == -1;
}
