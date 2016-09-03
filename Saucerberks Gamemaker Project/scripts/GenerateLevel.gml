
//CREATING BIG DEBRIS

//Set how many bits of debris we want.
NumberOfBlocks = irandom_range(40,60)
//How many times we will try to place the blocks. We don't want
//too many attempts, as it might result in a memory leak.
NumberOfAttempts = NumberOfBlocks * 100
Attempt = 0
//The number of pixels that we will have between each piece of debris we spawn.
BlockSize = 128
SafetyMargin = BlockSize

//While we are below the number of debris pieces and attempts, place a new debris piece within the safety margin, 
//of a random type. Place it 128 pixels away from the room walls and other pieces of debris.
while instance_number(oSolid) < NumberOfBlocks && Attempt < NumberOfAttempts  {

NewBlock = instance_create(random_range(SafetyMargin, room_width - SafetyMargin),random_range(SafetyMargin, room_height - SafetyMargin),choose (oDetritus1, oDetritus2, oDetritus5, oDetritus11, oDetritus12, oDetritus13, oDetritus14, oDetritus15))
NewBlock.x = (NewBlock.x div BlockSize) * BlockSize
NewBlock.y = (NewBlock.y div BlockSize) * BlockSize
with NewBlock {

//If it touches a player, an Enemy or another piece of debris on creation (which would mess with collision), destroy it.
if distance_to_object(oPlayer) < 100 {instance_destroy() }
if place_meeting(x,y,oSolid) {instance_destroy() }
if place_meeting(x,y,oEnemy) {instance_destroy() }
}
//Update the attempt number. This only occurs if we have failed to place the piece of clutter initially because of collision with something else.
Attempt = Attempt + 1
}


//CREATING SMALL CLUTTER

//Set how many bits of clutter we want.
NumberOfClutter = irandom_range(1500,2500)
//How many times we will try to place the blocks? As aboce.
NumberOfCAttempts = NumberOfClutter * 100
CAttempt = 0

//While we are below the number of clutter pieces and attempts, place a new piece of clutter within the safety margin (128 pixels) set above..
while instance_number(oClutter) < NumberOfClutter && CAttempt < NumberOfCAttempts  {

NewCBlock = instance_create(random_range(0, room_width),random_range(0, room_height),choose(oDetritus3, oDetritus4, oDetritus6, oDetritus7, oDetritus8, oDetritus9, oDetritus10,))
with NewCBlock {

//If it touches a player on creation (which is the only thing that would mess with its collision), destroy the piece pf clutter.
if place_meeting(x,y,oPlayer) { instance_destroy() }

}
//As above, update the attempt number. This only occurs if we have failed to place the piece of clutter initially because of collision with something else.
CAttempt = CAttempt + 1
}


//CREATING SPECIAL DEBRIS

//How many times we will try to place the Special Debris?
NumberOfSAttempts = 100
SAttempt = 0
SBlockSize = 128
//In order to make them rarer, only spawn a Special Debris 50% of the time.
SpawnOrNot = choose(true,false)

//If we are not on the start screen, and we are spawning in this room...
if room != rStart {
if SpawnOrNot = true {
//Only spawn one Special Debris per room.
while instance_number(oSpecialSolid) < 1 and SAttempt < NumberOfSAttempts {
//Only spawn the Grenade Special Debris if the player has not yet picked up the Grenade Gun. In either case, spawn one of the available Special Debris.
if global.GrenadeGunGot = false {
NewSpecial = instance_create(random_range(0 + SBlockSize,room_width - SBlockSize),random_range(0 + SBlockSize,room_height - SBlockSize), choose(oGrenadeDet2,oHidingDet,oTurretDet))
} else if global.GrenadeGunGot = true {
NewSpecial = instance_create(random_range(0 + SBlockSize,room_width - SBlockSize),random_range(0 + SBlockSize,room_height - SBlockSize), choose(oHidingDet, oTurretDet))
}
NewSpecial.x = (NewSpecial.x div SBlockSize) * SBlockSize
NewSpecial.y = (NewSpecial.y div SBlockSize) * SBlockSize
with NewSpecial {

//Destroy the Special Debris if... blah blah blah. It's the same bloody code. I should have made a better script.
if distance_to_object(oPlayer) < 100 {
instance_destroy()} 
}
SAttempt = SAttempt +1
}
}
}


//Do the same as above with the 'Gluttons' (called Boomers here)...
NumberOfBoomers = global.DiffNumberOfBoomers

global.NumberOfBoomersRemaining = NumberOfBoomers
NumberOfAttempts = NumberOfBoomers * 100
Attempt = 0

if room = rLevel1 {
while instance_number(oBoomer) < NumberOfBoomers && Attempt < NumberOfAttempts  {

NewBoomer = instance_create(random(room_width),random(room_height),oBoomer)
with NewBoomer {
if distance_to_object(oPlayer) < 400 { instance_destroy() }
if place_meeting(x,y,oSolid) { instance_destroy() }
}
Attempt = Attempt + 1
}
}



//... and with the background gas fields, and set them to a random colour.
NumberOfTints = 30

Colour1 = make_color_rgb(random(255),random(255), random(255))
Colour2 = make_color_rgb(random(255),random(255), random(255))

while instance_number(oTint) < NumberOfTints {
NewTint = instance_create(random(room_width),random(room_height),oTint)
NewTint.image_blend = choose(Colour1,Colour2)
}

//... and with the stars.

NumberOfStars = irandom_range (1000,1600)

while instance_number(oStar) < NumberOfStars {
NewStar = instance_create(random(room_width),random(room_height),oStar)
}
