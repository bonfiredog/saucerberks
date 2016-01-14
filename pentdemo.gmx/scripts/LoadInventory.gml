if file_exists("Inventory.txt") && instance_exists(oPlayer) {

with oPlayer{

//Read save file on disk
SaveFile = file_text_open_read("Inventory.txt")

//Read line and skip it
file_text_readln(SaveFile)

//Set an index
i = 0

//While we haven't reached the end of the file
while file_text_eof(SaveFile) = false {

    //Pull the weapon type from the save file, give it to the player and then move to the next line
    WeaponType = file_text_read_real(SaveFile)
    instance_create(x,y,WeaponType)
    file_text_readln(SaveFile)

//Update the index
i = i + 1

}

//Close the file - important!
file_text_close(SaveFile)
}

}