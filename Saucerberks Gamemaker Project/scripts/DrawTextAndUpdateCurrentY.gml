///DrawTextAndUpdateCurrentY (Text)

TextToDraw = argument0

//Draw some text at the x coordinate, and then move the 'line' down to the bottom 
//of the text, plus a bit of margin. 
draw_text(x,CurrentY,TextToDraw)

CurrentY = CurrentY + string_height(TextToDraw) + Margin
