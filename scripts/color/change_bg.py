import sys, os
import get_color

os.environ['BG_PRIM_COLOR'] = str(get_color.get_color(sys.argv[1]))
