//When an enemy is created, move them out of a Solid if they have spawned inside one.
while instance_place (x, y, oSolid) {
x = x + 64
y = y + 64
}


