///IHaveLineOfSightTo (Target)

Thing = argument0
Result = false

//If there is something to look at, and there is nothing between us (including Special Solids)
// and we are facing in the direction of the thing (with a spread of vision)
//, then return 'Have Line of Sight' as true.
if instance_exists(Thing) {
if collision_line(x,y,Thing.x,Thing.y,oSolid,true,true) = noone {
if collision_line(x,y,Thing.x,Thing.y,oSpecialSolid,true,true) = noone {
FieldOfView = 
if image_angle < point_direction(x,y,hing.image_angle
Result = true
}
}
}


return Result
