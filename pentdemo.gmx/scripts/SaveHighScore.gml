//Create the High Score File & add bumph
HighScoreFile = file_text_open_write("HighScore.txt")
file_text_write_string(HighScoreFile,"Current High Score:")
file_text_writeln(HighScoreFile)
//Delete anything already in there
CurrentHighScore = file_text_write_real(HighScoreFile,oCurrentScore.CurrentScore)
//Append the currentscore as the new highscore, and save it as global variable.
file_text_writeln(HighScoreFile)
global.HighScore = CurrentHighScore
file_text_close(HighScoreFile)
