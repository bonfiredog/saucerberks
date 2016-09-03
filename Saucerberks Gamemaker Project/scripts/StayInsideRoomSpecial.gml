
SpecialBoundaryWidth = sprite_width / 2
SpecialBoundaryHeight = sprite_height / 2

//If you hit the top or bottom of the room, set speed to 0.
if y < SpecialBoundaryHeight {
y = SpecialBoundaryHeight
DirectionToCheck = choose(-1,1)
direction = direction + random_range(30,60) * DirectionToCheck
}

if y > (room_height - SpecialBoundaryHeight){
y = (room_height - SpecialBoundaryHeight)
DirectionToCheck = choose(-1,1)
direction = direction + random_range(30,60) * DirectionToCheck
}

//If you hit the right or left of the room, set speed to 0.
if x < SpecialBoundaryWidth {
x = SpecialBoundaryWidth
DirectionToCheck = choose(-1,1)
direction = direction + random_range(30,60) * DirectionToCheck
}

 
if x > (room_width - SpecialBoundaryWidth){
x = room_width - SpecialBoundaryWidth
DirectionToCheck = choose(-1,1)
direction = direction + random_range(30,60) * DirectionToCheck
}
