///InitialiseEnemyCollision(Normal Speed, Direction)

//Set an enemy's speed.
NormalSpeed = argument0 / room_speed
speed = NormalSpeed
//Change an enemy's direction to a random direction. 
direction = random(argument1)

//When an enemy is created, move them out of a Solid if they have spawned inside one.
while instance_place (x, y, oSolid) {

x = x + 64
y = y + 64
}

ResetShunts()
