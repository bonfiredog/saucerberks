//Create the save file
SaveFile = file_text_open_read("Player Data.txt")

//Write a line of text to it
file_text_readln(SaveFile)

//Write a list of our weapons
i = 0
//While we haven't reached the end of the file
while file_text_eof(SaveFile) = false {

    //Record that we have this weapon
    WeaponType = file_text_read_real(SaveFile)
    instance_create(x,y,WeaponType)
    file_text_readln(SaveFile)    
    i = i + 1
    
}

file_text_close(SaveFile)
