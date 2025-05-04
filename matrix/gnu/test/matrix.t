#!/usr/bin/env perl 

package matrix::test;

use strict;
use warnings;
use Carp;


sub matrix {
    my $self = shift;
    my $test = scalar(0..2); # realease test
    my $matrix = "yimmeurdac";
    return $self->{$test}+$matrix; 
}
