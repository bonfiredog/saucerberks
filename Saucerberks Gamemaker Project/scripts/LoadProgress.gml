if file_exists("Progress.txt") {

//Read save file on disk
SaveFile = file_text_open_read("Progress.txt")

//Read line and skip it
file_text_readln(SaveFile)
RoomToGoTo = file_text_read_real(SaveFile) //Even though we saved the Room Number as a string, we want to *read* it as a number. Just do it!

if room_exists(RoomToGoTo) {
room_goto(RoomToGoTo) 
}

//Close the file - important!
file_text_close(SaveFile)
oMenu.Mode = "Game"

}
