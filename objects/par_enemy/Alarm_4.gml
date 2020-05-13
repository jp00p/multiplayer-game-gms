/// @desc enemy attack start
var pullback = point_direction(x,y,target.x,target.y);

// pull back a little
x = x - lengthdir_x(20, pullback);
y = y - lengthdir_y(20, pullback);

