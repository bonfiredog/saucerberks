speed = NormalSpeed

//If we're about to walk into a wall, change direction until we're not
CollisionChecks = 0
DirectionToCheck = choose(-1,1)

while place_meeting(x + hspeed, y + vspeed, oSolid) && CollisionChecks <= 12 {

    direction = direction + (random_range(30,60) * DirectionToCheck)
    CollisionChecks = CollisionChecks + 1

}

//If we're about to be shunted into a wall, don't get shunted at all
if place_meeting(x + hspeed + xShunt, y + vspeed + yShunt, oSolid) {
    ResetShunts()
}

hspeed = hspeed + xShunt
vspeed = vspeed + yShunt

ResetShunts()
