//The enemy's speed is set to the room's normal speed, defined elsewhere
speed = NormalSpeed

//Bounce off solid objects - when we will touch a solid object in the next frame at our current
//speed, send us in a different direction. Only allow this to happen 4 times, to stop spinning loops.

if place_meeting(x + hspeed, y + vspeed, oSolid) {

    direction = direction - random_range(130,220) 
    Deceleration = 400 / room_speed
    OriginalSpeed = speed
    speed = speed + random_range(400,800)
    while speed > OriginalSpeed {
    speed = speed - Deceleration
    }
}

//If we are about to shunted into a wall, don't shunt us!
if place_meeting(x + hspeed + xShunt, y + vspeed + yShunt, oSolid) {
    ResetShunts()
}

//If we have been shunted, move us the distance of the shunt and then stop the shunt.
hspeed = hspeed + xShunt
vspeed = vspeed + xShunt

ResetShunts()
