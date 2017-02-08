use 5.024;
use strict;
use warnings;
use Dancer2;
use MyDancerPlugin;

get "/" => sub {
    "index";
};

dance;
