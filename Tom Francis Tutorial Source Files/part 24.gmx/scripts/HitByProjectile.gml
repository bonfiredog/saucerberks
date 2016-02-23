//Look for a projectile
IncomingProjectile = instance_place(x,y,oProjectile)

if instance_exists(IncomingProjectile) {

    //If there was one, send back 'true' 
    //if the projectile is NOT a player chunk
    ProjectileHitSomething(IncomingProjectile)
    return true

} else {

    //If there wasn't, send back 'false'
    return false
    
}