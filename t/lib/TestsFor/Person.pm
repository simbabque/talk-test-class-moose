package TestsFor::Person;
use Test::Class::Moose;
use Person;

sub test_birthday {
    my ($test) = @_;

    my $bob = Person->new( name => 'Bob', age => '20' );
    is $bob->age, 20, 'Bob starts with the right age';
    $bob->birthday;
    is $bob->age, 21, 'Bob is a year older after their birthday';
}

sub test_constructor {
    my ($test) = @_;

    dies_ok { my $bob = Person->new( name => 'Bob' ) } 'Creating Bob without an age blows up';
}

1;
