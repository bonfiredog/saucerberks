image_angle = image_angle + SpinDirection
StayInsideRoom()

if instance_exists(oPlayer){
if instance_place (x + oPlayer.hspeed, y + oPlayer.vspeed, oPlayer) {
direction = point_direction(x,y,oPlayer.x,oPlayer.y) - random_range(130,210)
speed = speed + random_range(2,7)
}
}










if speed > OriginalSpeed {
speed = speed - 0.5
}
