//TurnToTarget(Trgt)

Target = argument0
DirectionToTarget = point_direction(x,y,Target.x,Target.y)


if TurnedToTarget = false {
if (direction > (DirectionToTarget - 3) and direction < (DirectionToTarget + 3)) = false {
if angle_difference(direction, DirectionToTarget) > 0 {
direction = direction + 3
} else if angle_difference(direction, DirectionToTarget) <= 0 {
direction = direction - 3
}
} else {
direction = DirectionToTarget
TurnedToTarget = true
}
} else if TurnedToTarget = true {
direction = DirectionToTarget
}



