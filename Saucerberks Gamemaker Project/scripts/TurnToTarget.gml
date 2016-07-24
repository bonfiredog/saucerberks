//TurnToTarget(Trgt)

//Set the target and the direction from the targeter to the target.
Target = argument0
DirectionToTarget = point_direction(x,y,Target.x,Target.y)

//If we haven't yet turned to target, turn at the rate of 3 degrees every program cycle.
//Turn in the direction which requires the least turning to reach the target's direction.
//Again, I got a help on Stack Overflow for this. (https://gamedev.stackexchange.com/questions/125174/using-angle-difference-to-calculate-shortest-turn-to-target-gamemaker)
if TurnedToTarget = false {
if (direction > (DirectionToTarget - 1) and direction < (DirectionToTarget + 1)) = false {
if angle_difference(direction, DirectionToTarget) > 0 {
direction = direction - 3
} else if angle_difference(direction, DirectionToTarget) < 0 {
direction = direction + 3
}
//If we are facing it, keep facing it, and advertise the fact that we are facing it.
} else {
direction = DirectionToTarget
TurnedToTarget = true
}
} else if TurnedToTarget = true {
direction = DirectionToTarget
}



