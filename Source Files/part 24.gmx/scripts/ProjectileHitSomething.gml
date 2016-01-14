ThisProjectile = argument0

if ThisProjectile.object_index != oPlayerChunk {
    with ThisProjectile { instance_destroy() }
}