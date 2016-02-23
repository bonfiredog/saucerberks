//Create save file on disk
SaveFile = file_text_open_write("Progress.txt")
//Write a line of text
file_text_write_string(SaveFile,"Room:")
//Start new line
file_text_writeln(SaveFile)

//Save the name of the current room to the file
file_text_write_string(SaveFile,string(room))

file_text_writeln(SaveFile)

//Close the file - important!
file_text_close(SaveFile)