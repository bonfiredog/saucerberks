//Change anything in the Projectile class into IncomingProjectile if it hits us, or is
//about to hit us in the next frame.
IncomingProjectile = instance_place(x + hspeed ,y + vspeed,oProjectile)

//If the IncomingProjectile has been created, do this:
if instance_exists(IncomingProjectile) {

//Stop the player chunk (which is a sort of projectile) 
//from being destroyed like other projectiles
if IncomingProjectile.object_index != oBit {
with IncomingProjectile {instance_destroy()}
}

//This tells other parts of the gamecode that there is an IncomingProjectile.
return true

} else {

//This tells other parts of the gamecode that there is NOT an IncomingProjectile.
return false

}
