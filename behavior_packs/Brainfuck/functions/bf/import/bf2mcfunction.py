#!/usr/bin/env python3
import sys
import os

def main(filename):
	mcfunction="function bf/clear_script"
	
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
if __name__=="__main__":
	main(sys.argv[1])