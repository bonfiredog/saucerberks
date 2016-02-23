


/* Screen Bullshit */

window_set_fullscreen(true)

//Set width and height to that of the player's screen
ScreenWidth = display_get_width()
ScreenHeight = display_get_height()

//How much of room on screen?
view_wview = ScreenWidth  
view_hview = ScreenHeight

//How much of our screen do we want this to take up?
view_wport = ScreenWidth    
view_hport = ScreenHeight

//Ignore...
surface_resize(application_surface, ScreenWidth, ScreenHeight)
