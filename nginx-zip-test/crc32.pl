#!/usr/bin/perl 
use strict;
use warnings;

use Digest::CRC qw/crc32/;
use Fatal qw/open/;
use File::Slurp qw/read_file/;
use POSIX;

my $file = $ARGV[0];

my $crc = crc32(scalar read_file($file));
print sprintf('%x', $crc) . " " . (-s $file) . " /$file $file\n";




