/* Screen Bullshit */

window_set_fullscreen(false) //Just for my purposes, since I'm stuck in windowed mode

//How big is the screen?
global.ScreenWidth = display_get_width() - 200 //-100 Just for my purposes, since I'm stuck in windowed mode
global.ScreenHeight = display_get_height() - 200 //-100 Just for my purposes, since I'm stuck in windowed mode

//Set size of window - you don't need to do this in full screen
window_set_size(global.ScreenWidth,global.ScreenHeight)

//How much of the room do we want on-screen?
view_wview = global.ScreenWidth
view_hview = global.ScreenHeight

//How much of our screen do we want that to take up?
view_wport = global.ScreenWidth
view_hport = global.ScreenHeight

//Some weird game maker bullshit
surface_resize(application_surface,global.ScreenWidth,global.ScreenHeight)

LoadInventory()

SaveProgress()