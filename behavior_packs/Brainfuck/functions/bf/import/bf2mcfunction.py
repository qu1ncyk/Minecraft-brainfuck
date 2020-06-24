#!/usr/bin/env python3
import sys
import os

filename=sys.argv[1]
mcfunction="function bf/reset"

if os.path.isfile(filename):
	with open(filename) as bf:
		i=1
		for char in bf.read():
			if char in "><+-.,[]":
				mcfunction+="\nexecute @e[tag=instr_ptr] ~~~ setblock ~-{}~-1~ concrete {}".format(i, "><+-.,[]".index(char)+1)
			i+=1
	with open(filename+".mcfunction", "w") as outputfile:
		outputfile.write(mcfunction)
	
else:
	print("Error: {} is not a file".format(filename))