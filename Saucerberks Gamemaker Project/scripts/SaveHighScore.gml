//Create the High Score file on the player's filesystem
//and add a title, so we know what it is.
HighScoreFile = file_text_open_write("HighScore.txt")
file_text_write_string(HighScoreFile,"Current High Score:")
file_text_writeln(HighScoreFile)
//Delete anything already in there, so that only the current
//highest score will be saved.
CurrentHighScore = file_text_write_real(HighScoreFile,oCurrentScore.CurrentScore)
//Append the current score as the new high score, and save it as global variable.
file_text_writeln(HighScoreFile)
global.HighScore = CurrentHighScore
//Always close the file!
file_text_close(HighScoreFile)
