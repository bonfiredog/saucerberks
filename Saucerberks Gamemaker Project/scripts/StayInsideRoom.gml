//If you hit the top or bottom of the room, set speed to 0.
if y < 0 {
y = 0
DirectionToCheck = choose(-1,1)
direction = direction + random_range(30,60) * DirectionToCheck
}

if y > room_height{
y = room_height
DirectionToCheck = choose(-1,1)
direction = direction + random_range(30,60) * DirectionToCheck
}

//If you hit the right or left of the room, set speed to 0.
if x < 0 {
x = 0
DirectionToCheck = choose(-1,1)
direction = direction + random_range(30,60) * DirectionToCheck
}

 
if x > room_width{
x = room_width
DirectionToCheck = choose(-1,1)
direction = direction + random_range(30,60) * DirectionToCheck
}
