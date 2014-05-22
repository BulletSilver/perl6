use v6;
use Test;

plan 7;

BEGIN { @*INC.unshift('./') }

BEGIN { EVAL('use Robot') }; pass 'Module loaded';

ok Robot.can('name'), 'Has name attribute';
ok Robot.can('reset_name'), 'Has reset_name method';

# robot method tests
my $robot = Robot.new;
my $name = $robot.name;

ok $name ~~ /^^<[A..Z]>**1..2 <[0..9]>**3$$/, 'Name should match schema';
is $name, $robot.name, 'Name should be persistent';
ok $robot.name ne Robot.new.name, 'Robots should have different names';

$robot.reset_name;

ok $robot.name ne $name, 'reset_name should change the robot name';


