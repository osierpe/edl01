import re
import sys

regex = ['\(\d{2}\)9\d{4}\-\d{4}']
regex.append('\(\d{2}\)9\d{8}')
regex.append('(\+55)? *\d{2} *9\d{4} *\d{4}')
fo = open(sys.argv[1], "r")
line = fo.readline()
while(line):
	for item in regex:
		line = re.sub(item,"-Conteudo pessoal-",line)
	print(line)
	line = fo.readline()