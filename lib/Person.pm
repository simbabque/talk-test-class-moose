package Person;
use Moose;

has name => (
    is       => 'ro',
    required => 1,
);

has age => (
    is       => 'ro',
    isa      => 'Int',
    required => 1,
    writer   => '_write_age',
);

sub birthday {
    my ($self) = @_;

    $self->_write_age( $self->age + 1 );
}

1;
