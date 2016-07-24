///SolidCollision(ThingInContact)

ThingInContact = argument0

//If something is touching the Solid, and its big enough to
//be collided with, and the Solid itself is big enough, 
//and it isn't in the midst of another collision...
if instance_exists(ThingInContact) 
and image_xscale > 0.7
and ThingInContact.image_xscale > 0.7
and MidstOfColliding <= 0 {


//Make it bounce off, with a slightly faster spin and speed, in
//the almost-opposite direction (with a bit of variation) to the thing in contact.
//Start two seconds of being 'in collision' so that the Solid has a chance to get clear of the 
//thing with which it collided. Only do this once (this is what the SetValues variable is for).

if SetValues = false {
direction = point_direction(ThingInContact.x,ThingInContact.y,x,y) + random_range(-20,20)
speed = speed + 2
if SpinDirection <= 0 {
SpinDirection = SpinDirection - 1
} else if SpinDirection > 0 {
SpinDirection = SpinDirection + 1
}
MidstOfColliding = 120
SetValues = true
}
}
