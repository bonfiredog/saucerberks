//Look for a projectile
IncomingProjectile = instance_place(x,y,oProjectile)

if instance_exists(IncomingProjectile) {

    //If there was one, send back 'true'    
    return true

} else {

    //If there wasn't, send back 'false'
    return false
    
}
