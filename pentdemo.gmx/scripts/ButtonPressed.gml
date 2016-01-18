///ButtonPressed (Text)

ButtonText = argument0
Result = false

//Create the top and bottom of the box, where the text starts, the centre of the box and then the left and right.
BoxTop = CurrentY
TextTop = BoxTop + Margin
BoxBottom = BoxTop + Margin + string_height(ButtonText) + Margin
HalfTextWidth = string_width(ButtonText) / 2
BoxLeft =  x - HalfTextWidth - (Margin * 2)
BoxRight = x + HalfTextWidth + (Margin * 2)

//Set text color to grey
draw_set_colour(c_green)

//Highlight the box if moused over
if device_mouse_x_to_gui(0) > BoxLeft and  device_mouse_x_to_gui(0) < BoxRight and  device_mouse_y_to_gui(0) > BoxTop and  device_mouse_y_to_gui(0) < BoxBottom
{
draw_set_alpha(TitleAlpha / 2)
//Tell the game that we've pressed the button
if mouse_check_button_pressed(mb_left) {Result = true}
} else {
draw_set_alpha(TitleAlpha)
}



//Actually draw it on the page.
draw_rectangle(BoxLeft, BoxTop, BoxRight, BoxBottom, false)
draw_set_alpha(TitleAlpha)
draw_set_colour(c_lime)

CurrentY = TextTop
DrawTextAndUpdateCurrentY(ButtonText)

CurrentY = CurrentY + (Margin * 2)

return Result
