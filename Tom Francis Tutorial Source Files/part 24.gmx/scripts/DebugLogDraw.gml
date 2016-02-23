

//Set up how we want to draw the debug text  
draw_set_alpha(1)
draw_set_color(c_white)
draw_set_font(fDebug)   
draw_set_halign(fa_left) 
draw_set_valign(fa_top)

//Figure out where the bottom of the screen is
var BottomY = view_hport[0] - 50;
//Go through our array of debug reports
//Starting at 0
var i = 0;
while i < DebugCount && i < DebugMax {
    //For each entry, draw it
    draw_text(20, BottomY - (i * 20), DebugText[DebugCount - (i + 1)])        
    i++
}