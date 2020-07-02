#!/usr/bin/env python3
import os
import importlib
from cd import *
from behavior_packs.Brainfuck.functions.bf.create_print import main as create_print
bf2mcfunction=importlib.import_module("behavior_packs.Brainfuck.functions.bf.import.bf2mcfunction").main
#If I'd use the normal import syntax, Python would throw an error,
#because it sees the import in the file path as a keyword

#Run create_print.py in the correct directory
cd("behavior_packs/Brainfuck/functions/bf", create_print)

def convertfiles():
	for i in os.listdir("."):
		if os.path.isfile(i) and i.endswith(".bf"):
			bf2mcfunction(i)

cd("behavior_packs/Brainfuck/functions/bf/import", convertfiles)