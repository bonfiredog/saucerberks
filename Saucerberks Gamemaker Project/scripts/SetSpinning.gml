///SetSpinning(lowest negative spin, highest negative spin, lowest positive spin, highest positive spin)

image_angle = random(360)
depth = 20
NegativeRange = irandom_range(argument0,argument1)
PositiveRange = irandom_range(argument2,argument3)
SpinDirection = choose(NegativeRange,PositiveRange)
OriginalSpinDirection = SpinDirection
