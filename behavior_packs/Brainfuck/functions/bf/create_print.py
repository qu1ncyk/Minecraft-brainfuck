#!/usr/bin/env python3
import json

def make_command(num):
	char=json.dumps(chr(num))[1:-1]
	return "execute @a[tag=value,scores={value="+str(num)+"}] ~~~ tellraw @a {\"rawtext\": [{\"text\": \""+char+" ("+str(num)+")\"}]}"

def main():
	content="#Generated using create_print.py"
	for i in range(256):
		content+="\n"+make_command(i)
	file=open("print.mcfunction", "w")
	file.write(content)
	file.close()

if __name__=="__main__":
	main()