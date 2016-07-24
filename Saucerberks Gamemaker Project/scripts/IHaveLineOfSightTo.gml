///IHaveLineOfSightTo (Target)

Thing = argument0
Result = false

//If there is something to look at, and there is nothing between us (including Special Solids)...
if instance_exists(Thing) {
if collision_line(x,y,Thing.x,Thing.y,oSolid,true,true) = noone {
if collision_line(x,y,Thing.x,Thing.y,oSpecialSolid,true,true) = noone {
//And the Thing is within a spread around the image_angle....
FieldOfView = 90
if image_angle >= point_direction(x,y,Thing.x,Thing.y) and image_angle <= point_direction(x,y,Thing.x,Thing.y) + (FieldOfView/2) 
or image_angle <= point_direction(x,y,Thing.x,Thing.y) and image_angle >= point_direction(x,y,Thing.x,Thing.y) - (FieldOfView/2)
and point_distance(x,y,Thing.x,Thing.y) > 700 {  
//Then it's in line of sight!
Result = true
}
}
}
}


return Result
