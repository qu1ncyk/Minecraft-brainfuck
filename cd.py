import os

def cd(dir, function):
	currentdir=os.getcwd()
	os.chdir(dir)
	function()
	os.chdir(currentdir)