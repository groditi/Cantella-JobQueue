package Cantella::JobQueue::Job;

use Moose;

has id => (
  is => 'rw',
  isa => 'Defined',
  predicate => 'has_id',
);

has priority => (
  is => 'rw',
  isa => 'Int',
  predicate => 'has_priority',
);

has job_type => (
  is => 'rw',
  isa => 'Str',
  required => 1,
);

has arguments => (
  is => 'rw',
  isa => 'Ref',
  required => 1
);

has delay_until => (
  is => 'rw',
  isa => 'DateTime',
  predicate => 'has_delay_until',
);

has completed_successfully => (
  is => 'rw',
  isa => 'Bool',
  predicate => 'is_completed',
);

1;

__END__;
