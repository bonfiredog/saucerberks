///SetSpinning(lowest negative spin, highest negative spin, lowest positive spin, highest positive spin)

//Set the debris to rotate either negatively or positively (i.e. counter-clock or clockwise)
//and at a certain speed.
image_angle = random(360)
depth = 20
NegativeRange = irandom_range(argument0,argument1)
PositiveRange = irandom_range(argument2,argument3)
SpinDirection = choose(NegativeRange,PositiveRange)
//Remember this speed and direction, in case it's ever changed.
OriginalSpinDirection = SpinDirection
