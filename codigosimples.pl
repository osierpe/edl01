use warnings;
use strict;

my @palavras= (
	   'este e um',
	   'exemplo de',
	   'expressoes regulares',
	   'em perl',
	   'muito facil nao e?'
	);

foreach(@palavras){ #para cada palavra no array
   print("$_ \n") if($_ =~ /ex/); #se for encontrado a sequencia de caracteres "ex" nesta palavra, a imprima na tela
}
