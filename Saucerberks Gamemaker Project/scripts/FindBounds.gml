//Find the edges of an object. This useful code
//was given to me on Stack Overflow:
//(https://gamedev.stackexchange.com/questions/109022/spawning-object-1-within-object-2s-collision-box-gamemaker)

// top left point
a = point_direction(0, 0, -sprite_xoffset, -sprite_yoffset) + image_angle;
d = point_distance(0, 0, -sprite_xoffset, -sprite_yoffset);
px1 = lengthdir_x(d, a);
py1 = lengthdir_y(d, a);

// top right point
a = point_direction(0, 0, sprite_width - sprite_xoffset - 1, -sprite_yoffset) + image_angle;
d = point_distance(0, 0, sprite_width - sprite_xoffset - 1, -sprite_yoffset);
px2 = lengthdir_x(d, a);
py2 = lengthdir_y(d, a);

// bottom right point
a = point_direction(0, 0, sprite_width - sprite_xoffset - 1, sprite_height - sprite_yoffset - 1) + image_angle;
d = point_distance(0, 0, sprite_width - sprite_xoffset - 1, sprite_height - sprite_yoffset - 1);
px3 = lengthdir_x(d, a);
py3 = lengthdir_y(d, a);

// bottom left point
a = point_direction(0, 0, -sprite_xoffset, sprite_height - sprite_yoffset - 1) + image_angle;
d = point_distance(0, 0, -sprite_xoffset, sprite_height - sprite_yoffset - 1);
px4 = lengthdir_x(d, a);
py4 = lengthdir_y(d, a);

// calulate bounds
SpriteLeft = x + min(px1, px2, px3, px4);
SpriteTop = y + min(py1, py2, py3, py4);
SpriteRight = x + max(px1, px2, px3, px4);
SpriteBottom = y + max(py1, py2, py3, py4);
