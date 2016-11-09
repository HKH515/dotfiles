import sys, struct
from PIL import Image

def get_color(imagePath):
    im = Image.open(imagePath)
    pix = im.load()
    darkerPixVal = [x-30 for x in list(pix[1,0])]
    lighterPixVal = [x+30 for x in list(pix[1,0])]
    original = "#%02x%02x%02x" % (pix[1,0])
    lighter = "#%02x%02x%02x" % tuple(lighterPixVal)
    darker = "#%02x%02x%02x" % tuple(darkerPixVal)
    return (original, darker)

if __name__ == "__main__":
    print("%s %s" % (get_color(sys.argv[1])))
