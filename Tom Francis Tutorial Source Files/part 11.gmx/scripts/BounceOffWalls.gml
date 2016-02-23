
//Bounce off edge of room
if y < 0 or y > room_height {
    vspeed = vspeed * - 1
}

if x < 0 or x > room_width {
    hspeed = hspeed * - 1
}

//Bounce off solid objects
CollisionChecks = 0
while place_meeting(x + hspeed, y + vspeed, oSolid) && CollisionChecks <= 4 {

    direction = direction + 45
    CollisionChecks = CollisionChecks + 1

}
