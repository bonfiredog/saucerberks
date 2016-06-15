/* Pick up weapons */

//If this weapon does not have an 'Owner'...
if instance_exists(Owner) = false {

//...and if the Player object is touching the weapon...
if instance_exists(instance_place(x,y,oPlayer)) {

//make player the owner
audio_play_sound(aItemPickup,1,false)
Owner = oPlayer.id
GunOwned = true

//put the weapon into the weapon array, giving it the index 
//based on how many weapons the player already has.
Owner.Weapon[Owner.WeaponCount] = self.id

//Increase the player's weapon count value by 1.
Owner.WeaponCount = Owner.WeaponCount + 1
}
}
