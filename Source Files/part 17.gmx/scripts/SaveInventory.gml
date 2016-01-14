if instance_exists(oPlayer) {
    
    with oPlayer {
        
        //Create the save file
        SaveFile = file_text_open_write("Inventory.txt")
        
        //Write a line of text to it
        file_text_write_string(SaveFile,"Inventory:")
        file_text_writeln(SaveFile)
        
        //Write a list of our weapons
        i = 0
        while i < WeaponCount {
        
            //Record that we have this weapon
            file_text_write_real(SaveFile,Weapon[i].object_index)
            file_text_writeln(SaveFile)    
            i = i + 1
            
        }
        
        file_text_close(SaveFile)
    
    }
    
}
