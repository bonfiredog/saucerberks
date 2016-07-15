///SolidCollision(ThingInContact)

ThingInContact = argument0

if instance_exists(ThingInContact) 
and image_xscale > 0.7
and ThingInContact.image_xscale > 0.7
and MidstOfColliding <= 0 {

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
