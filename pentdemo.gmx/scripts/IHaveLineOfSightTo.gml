///IHaveLineOfSightTo (Target)

Thing = argument0
Result = false

//If there is something to look at, and there is nothing between us, then return 'Have 
// Line of Sight is true.
if instance_exists(Thing) {
if collision_line(x,y,Thing.x,Thing.y,oSolid,true,true) = noone {
Result = true
}
}


return Result
