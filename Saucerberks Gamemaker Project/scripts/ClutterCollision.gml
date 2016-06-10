image_angle = image_angle + SpinDirection
StayInsideRoom()

if instance_exists(oPlayer){
if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, oPlayer, false, true) > 0 { 
direction = point_direction(x,y,oPlayer.x,oPlayer.y) - random_range(130,210)
speed = speed + random_range(2,7)
}
}










if speed > OriginalSpeed {
speed = speed - 0.5
}
