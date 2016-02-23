

/* Screen Bullshit */

window_set_fullscreen(false) //Just for my purposes, since I'm stuck in windowed mode

//How big is the screen?
ScreenWidth = display_get_width() - 100 //-100 Just for my purposes, since I'm stuck in windowed mode
ScreenHeight = display_get_height() - 200 //-100 Just for my purposes, since I'm stuck in windowed mode

//Set size of window - you don't need to do this in full screen
window_set_size(ScreenWidth,ScreenHeight)

//How much of the room do we want on-screen?
view_wview = ScreenWidth
view_hview = ScreenHeight

//How much of our screen do we want that to take up?
view_wport = ScreenWidth
view_hport = ScreenHeight

//Some weird game maker bullshit
surface_resize(application_surface,ScreenWidth,ScreenHeight)
