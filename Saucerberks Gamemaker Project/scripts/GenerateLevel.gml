
//Set how many blocks we want
NumberOfBlocks = irandom_range(40,60)
//How many times we will try to place the blocks
NumberOfAttempts = NumberOfBlocks * 100
Attempt = 0
BlockSize = 128
SafetyMargin = BlockSize

//While we are below the number of blocks and attempts, place a new block within the safety margin.
while instance_number(oSolid) < NumberOfBlocks && Attempt < NumberOfAttempts  {

NewBlock = instance_create(random_range(SafetyMargin, room_width - SafetyMargin),random_range(SafetyMargin, room_height - SafetyMargin),choose (oDetritus1, oDetritus2, oDetritus5, oDetritus11, oDetritus12, oDetritus13, oDetritus14, oDetritus15))
NewBlock.x = (NewBlock.x div BlockSize) * BlockSize
NewBlock.y = (NewBlock.y div BlockSize) * BlockSize
with NewBlock {

//If it touches a player on creation, destroy
if place_meeting(x,y,oPlayer) { instance_destroy() }
if place_meeting(x,y,oSolid) {instance_destroy() }
if place_meeting(x,y,oEnemy) {instance_destroy() }
}
Attempt = Attempt + 1
}

//Set how many blocks we want
NumberOfClutter = irandom_range(1500,2500)
//How many times we will try to place the blocks
NumberOfCAttempts = NumberOfClutter * 100
CAttempt = 0

//While we are below the number of blocks and attempts, place a new block within the safety margin.
while instance_number(oClutter) < NumberOfClutter && CAttempt < NumberOfCAttempts  {

NewCBlock = instance_create(random_range(0, room_width),random_range(0, room_height),choose(oDetritus3, oDetritus4, oDetritus6, oDetritus7, oDetritus8, oDetritus9, oDetritus10,))
with NewCBlock {

//If it touches a player on creation, destroy
if place_meeting(x,y,oPlayer) { instance_destroy() }

}
CAttempt = CAttempt + 1
}




//How many times we will try to place the blocks
NumberOfSAttempts = 100
SAttempt = 0
SBlockSize = 128
SpawnOrNot = choose(true,false)

if room != rStart {
if SpawnOrNot = true {
while instance_number(oSpecialSolid) < 1 {
if global.GrenadeGunGot = false {
NewSpecial = instance_create(random_range(0 + SBlockSize,room_width - SBlockSize),random_range(0 + SBlockSize,room_height - SBlockSize), choose(oGrenadeDet2,oHidingDet,oTurretDet))
} else if global.GrenadeGunGot = true {
NewSpecial = instance_create(random_range(0 + SBlockSize,room_width - SBlockSize),random_range(0 + SBlockSize,room_height - SBlockSize), choose(oHidingDet, oTurretDet))
}
NewSpecial.x = (NewSpecial.x div SBlockSize) * SBlockSize
NewCBlock.y = (NewCBlock.y div SBlockSize) * SBlockSize
with NewCBlock {

if place_meeting(x,y,oPlayer) or place_meeting(x,y,oEnemy) or place_meeting(x,y,oSolid) {
instance_destroy() }
}
SAttempt = SAttempt +1
}
}
}


//Do the same with boomers.
NumberOfBoomers = global.DiffNumberOfBoomers

global.NumberOfBoomersRemaining = NumberOfBoomers
NumberOfAttempts = NumberOfBoomers * 100
Attempt = 0

if room = rLevel1 {
while instance_number(oBoomer) < NumberOfBoomers && Attempt < NumberOfAttempts  {

NewBoomer = instance_create(random(room_width),random(room_height),oBoomer)
with NewBoomer {
if place_meeting(x,y,oPlayer) { instance_destroy() }
if place_meeting(x,y,oSolid) { instance_destroy() }
}
Attempt = Attempt + 1
}
}



//Do the same with tinted background, and set it to a random colour.
NumberOfTints = 30

Colour1 = make_color_rgb(random(255),random(255), random(255))
Colour2 = make_color_rgb(random(255),random(255), random(255))

while instance_number(oTint) < NumberOfTints {
NewTint = instance_create(random(room_width),random(room_height),oTint)
NewTint.image_blend = choose(Colour1,Colour2)
}

//... And with stars.

NumberOfStars = irandom_range (1000,1600)

while instance_number(oStar) < NumberOfStars {
NewStar = instance_create(random(room_width),random(room_height),oStar)
}
