
instance_create(room_width / 2, room_height / 2, oPlayer)

if instance_exists(oGame) = false {
    instance_create(room_width / 2, room_height / 2, oGame)
}

NumberOfBlocks = irandom_range(3,10)
NumberOfAttempts = NumberOfBlocks * 100
Attempt = 0
BlockSize = 128
SafetyMargin = BlockSize
BlockColour = make_color_rgb(random(255),random(255),random(255))

while instance_number(oSolid) < NumberOfBlocks && Attempt < NumberOfAttempts {
    NewBlock = instance_create(random_range(SafetyMargin, room_width - SafetyMargin),random_range(SafetyMargin, room_height - SafetyMargin),oSolid)
    NewBlock.x = (NewBlock.x div BlockSize) * BlockSize
    NewBlock.y = (NewBlock.y div BlockSize) * BlockSize
    NewBlock.image_blend = BlockColour
    with NewBlock {
        //If we're on top of the player, destroy us
        if place_meeting(x,y,oPlayer) { instance_destroy() }
    }
    Attempt = Attempt + 1
}

NumberOfBoomers = irandom_range(3,7)
NumberOfAttempts = NumberOfBoomers * 100
Attempt = 0

while instance_number(oBoomer) < NumberOfBoomers && Attempt < NumberOfAttempts {
    NewBoomer = instance_create(random(room_width),random(room_height),oBoomer)
    with NewBoomer {
        //If we're on top of the player, destroy us
        if place_meeting(x,y,oPlayer) { instance_destroy() }
        if place_meeting(x,y,oSolid) { instance_destroy() }
    }
    Attempt = Attempt + 1
}



NumberOfTints = 30

Colour1 = make_color_rgb(random(255),random(255),random(255))
Colour2 = make_color_rgb(random(255),random(255),random(255))

while instance_number(oTint) < NumberOfTints {
    NewTint = instance_create(random(room_width),random(room_height),oTint)
    NewTint.image_blend = choose(Colour1,Colour2)
}
