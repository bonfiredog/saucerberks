//Create the player in the middle of the room, and the Game object (ONLY IF IT HASN'T ALREADY BEEN LOADED, AS IT IS PERSISTENT!)
if room != rTutorial {instance_create(room_width/2,room_height/2,oPlayer)}

if instance_exists(oGame) = false {
instance_create(room_width/2,room_height/2,oGame)
}

if instance_exists(oUI) = false {
instance_create(room_width/2,room_height/2,oUI)
}

if instance_exists(oUI2) = false {
instance_create(room_width/2,room_height/2,oUI2)
}

if room = rLevel1 {
if instance_exists(oCurrentScore) = false {
instance_create(room_width/2,room_height/2,oCurrentScore)
}
}
