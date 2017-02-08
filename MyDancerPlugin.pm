package MyDancerPlugin;
use 5.020;
use strict;
use warnings;
use Dancer2::Plugin;

sub BUILD {
    my $self = shift;
    say "Adding hook";
    $self->app->add_hook(Dancer2::Core::Hook->new(
        name => 'before',
        code => sub { $self->my_before_hook(shift) },
    ));
}

sub my_before_hook {
    my ($self, $app) = @_;
    say "In hook!";
    $app->add_route(method => 'get', regexp => '/test', code => sub {
        my $app = shift;
        "I am a stegosaurus!";
    });
}

1;
