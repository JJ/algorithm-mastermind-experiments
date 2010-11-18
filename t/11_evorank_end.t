#!perl 

use Test::More qw( no_plan ); #Random initial string...
use lib qw( lib ../lib ../../lib ../Algorithm-Evolutionary/lib ); #Just in case we are testing it in-place

use Algorithm::MasterMind qw(check_combination);
use Algorithm::MasterMind::Test_Solver qw( solve_mastermind );

BEGIN {
	use_ok( 'Algorithm::MasterMind::EvoRank_End_Games' );
}


my @secret_codes = qw( AAAA ABCD CDEF ACAC BAFE FFFF);

for my $secret_code ( @secret_codes ) {
  my $population_size = 256;
  my @alphabet = qw( A B C D E F );
  my $solver = new Algorithm::MasterMind::EvoRank_End_Games 
  { alphabet => \@alphabet,
    length => length( $secret_code ),
    pop_size => $population_size,
    replacement_rate => 0.5 };

  solve_mastermind( $solver, $secret_code );
  $solver = new Algorithm::MasterMind::EvoRank_End_Games 
  { alphabet => \@alphabet,
    length => length( $secret_code ),
    pop_size => $population_size,
    replacement_rate => 0.4,
    distance => 'distance_chebyshev' };
  solve_mastermind( $solver, $secret_code );
}

