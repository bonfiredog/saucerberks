if file_exists("HighScore.txt") {

//Read save file on disk
HighScoreFile = file_text_open_read("HighScore.txt")

//Read line and skip it
file_text_readln(HighScoreFile)
global.HighScore = file_text_read_real(HighScoreFile) //Even though we saved the Room Number as a string, we want to *read* it as a number. Just do it!

//Close the file - important!
file_text_close(HighScoreFile)

}
