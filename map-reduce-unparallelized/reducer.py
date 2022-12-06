#!/usr/bin/python
import sys

color_instances = 0
current_color = None

for line in sys.stdin:
    data = line.strip().split("\t")

    if len(data) != 2:
        continue

    new_color_key, color_instance_value = data
    if current_color and current_color != new_color_key:
        print("%s\t%s" % (current_color, color_instances))
        color_instances = 0

    current_color = new_color_key
    color_instances += int(color_instance_value)

if current_color is not None:
    print("%s\t%s" % (current_color, color_instances))
