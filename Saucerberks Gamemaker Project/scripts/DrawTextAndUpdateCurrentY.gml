///DrawTextAndUpdateCurrentY (Text)

TextToDraw = argument0

//Draw some text at the x coordinate, and then move the 'line' down the page to the 
//value of the margin.
draw_text(x,CurrentY,TextToDraw)

CurrentY = CurrentY + string_height(TextToDraw) + Margin
