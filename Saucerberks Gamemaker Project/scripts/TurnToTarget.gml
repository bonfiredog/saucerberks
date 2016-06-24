if AlertType = "Enemy" {
DirectionToTarget = point_direction(x,y,EnemyInRange.x,EnemyInRange.y)
} else if AlertType = "Player" {
DirectionToTarget = point_direction(x,y,PlayerInRange.x,PlayerInRange.y)
}

if TurnedToTarget = false {

if direction != DirectionToTarget {
direction = direction - 100 / room_speed
} else {
TurnedToTarget = true
direction = DirectionToTarget
}

} else if TurnedToTarget = true {
direction = DirectionToTarget
}
