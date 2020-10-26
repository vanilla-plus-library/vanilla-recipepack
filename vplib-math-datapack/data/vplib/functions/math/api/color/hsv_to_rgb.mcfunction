# Description: Converts HSV(Hue, Saturation, Value) to RGB(Red, Green, Blue) color format.

# INPUTS:
#  #hsv.h vplib.math (0-100%/0-360º with scale factor = 100)
#  #hsv.s vplib.math (0-100% percentage with scale factor = 100)
#  #hsv.v vplib.math (0-100% percentage with scale factor = 100)
#  #scale_factor vplib.math (Corresponds to the amount of decimals used in the inputs)
#  #hsv.h_degrees vplib.math (0 = Hue is a 0-100 percentage, 1 = Hue is in 0-360 degrees)

# OUTPUTS:
#  #rgb.r vplib.math
#  #rgb.g vplib.math
#  #rgb.b vplib.math
#  #rgb.int vplib.math (Ready to store in leather armor)

function #vplib:math/api/color/hsv_to_rgb