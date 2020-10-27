use warnings;
use strict;

my @palavras= (
	   'este e um',
	   'exemplo de',
	   'expressoes regulares',
	   'em perl',
	   'muito facil nao e?'
	);

foreach(@palavras){
   print("$_ \n") if($_ =~ /ex/);
}