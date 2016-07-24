//Change the rotation every step at the predetermined speed and direction in the SpinDirection variable.
image_angle = image_angle + SpinDirection

//Keep the clutter inside the room.
StayInsideRoom()


//If the Player is about the touch the clutter, move it away from the player.
if instance_exists(oPlayer){
if instance_place (x + oPlayer.hspeed, y + oPlayer.vspeed, oPlayer) {

direction = point_direction(x,y,oPlayer.x,oPlayer.y) - random_range(130,210)
speed = speed + random_range(2,7)
}
}

//Slow the clutter down if it has been sped up because of the player colliding with it.
if speed > OriginalSpeed {
speed = speed - 0.5
}
