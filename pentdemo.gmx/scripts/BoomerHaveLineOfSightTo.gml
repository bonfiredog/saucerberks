///IHaveLineOfSightTo (Target)

Thing = argument0
Result = false

//If there is something to look at, and there is nothing between us...
if instance_exists(Thing) {
if collision_line(x,y,Thing.x,Thing.y,oSolid,true,true) = noone {
Result = true
}
}




return Result
