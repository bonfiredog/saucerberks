if instance_exists(oPlayer) {

with oPlayer{

//Create save file on disk
SaveFile = file_text_open_write("Inventory.txt")
//Write a line of text
file_text_write_string(SaveFile,"Inventory:")
//Start new line
file_text_writeln(SaveFile)

//Set an index
i = 0

//Keep recording weapons until we reach our weapon count
while i < WeaponCount {
//Record that we have this weapon on a new line
file_text_write_real(SaveFile,Weapon[i].object_index)
file_text_writeln(SaveFile)

//Update the index
i = i + 1

}

//Close the file - important!
file_text_close(SaveFile)

}
}