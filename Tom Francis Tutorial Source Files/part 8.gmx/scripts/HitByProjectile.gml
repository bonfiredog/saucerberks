//Look for a projectile
IncomingProjectile = instance_place(x,y,oProjectile)

if instance_exists(IncomingProjectile) {

    //If there was one, send back 'true' 
    //if the projectile is NOT a player chunk
    if IncomingProjectile.object_index != oPlayerChunk {
        with IncomingProjectile { instance_destroy() }
    }
    return true

} else {

    //If there wasn't, send back 'false'
    return false
    
}
