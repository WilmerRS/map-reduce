#!/usr/bin/python
import sys

next(sys.stdin)

for line in sys.stdin:
    data = line.strip().split(',')
    
    if len(data) == 0:
        continue
      
    color_label = data[0].lower()

    print("%s\t%s" % (color_label, 1))
