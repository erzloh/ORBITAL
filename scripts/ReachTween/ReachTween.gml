/// @desc ReachTween(value, target, speed)
/// This function return the value inbetween the value and the target smoothly.
/// @arg value
/// @arg target
/// @arg speed

var value  = argument0;
var target = argument1;
var spd    = argument2;

return(lerp(value, target, 1/spd));