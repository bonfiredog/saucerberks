///SolidCollision(ThingInContact)

ThingInContact = argument0

//If something is touching the Solid, and its big enough to
//be collided with, and the Solid itself is big enough, 
//and it isn't in the midst of another collision...
if instance_exists(ThingInContact) 
and Collidable = true
and ThingInContact.image_xscale >= 0.9
and MidstOfColliding <= 0 {

//Make it bounce off, with a slightly faster spin and speed, in
//the almost-opposite direction (with a bit of variation) to the thing in contact.
//Start two seconds of being 'in collision' so that the Solid has a chance to get clear of the 
//thing with which it collided. Only do this once (this is what the SetValues variable is for).

if SetValues = false {
direction = point_direction(x,y,ThingInContact.x,ThingInContact.y,) + choose(-190,190)
speed = speed + 300 / room_speed
if SpinDirection <= 0 {
SpinDirection = SpinDirection - 1.1
} else if SpinDirection > 0 {
SpinDirection = SpinDirection + 1.1
}
MidstOfColliding = 60
SetValues = true
}
}
