#!/usr/bin/env python3
import zipfile
import os

import build

def zip(zipdir, output):
	with zipfile.ZipFile(output, "w") as mcpack:
		for root, dirs, files in os.walk(zipdir):
			for file in files:
				if file.endswith((".mcfunction", ".png", ".json", ".lang")):
					filetozip=os.path.join(root, file)
					mcpack.write(filetozip, filetozip[len(zipdir):])

zip("behavior_packs/Brainfuck", "Brainfuck beh.mcpack")
zip("resource_packs/Brainfuck", "Brainfuck res.mcpack")