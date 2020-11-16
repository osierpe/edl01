import re #importacao de uma biblioteca de regex
import sys #importacao de uma biblioteca para leitura de arquivo

regex = ['\(\d{2}\)9\d{4}\-\d{4}'] #criacao do array de regex 
regex.append('\(\d{2}\)9\d{8}')
regex.append('(\+55)? *\d{2} *9\d{4} *\d{4}')
fo = open(sys.argv[1], "r") 
line = fo.readline()
while(line):
	for item in regex:
		line = re.sub(item,"-Conteudo pessoal-",line) #para cada linha do arquivo, chama a biblioteca de regex com a função de substituicao
	print(line) #imprima a linha substituida
	line = fo.readline()
