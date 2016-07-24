//Create the clutter, set its size to be random, and its transparency.
//This also sets its speed. It's all a bit overcomplicated. These nested 
//scripts are just confusing me.

InitialiseEnemyCollision(random_range(8,50),360)
image_xscale = random_range(0.3,1.0)
image_yscale = image_xscale
image_alpha = random_range(0.5,1.0)
OriginalSpeed = speed
