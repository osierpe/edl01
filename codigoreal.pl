use warnings;
use strict;	#nenhuma biblioteca de regex

my @regex = (
	'\(\d{2}\)9\d{4}\-\d{4}', #numero de celular com hífen e ddd
	'\(\d{2}\)9\d{8}', #numero de celular sem hífen e ddd
	'(\+55)? *\d{2} *9\d{4} *\d{4}', #numero de celular com espacos e/ou ddi
);
while(<>){
	for my $regex (@regex){
		s/$regex/-Conteudo pessoal-/g; #aplica a regex em $_ e substitui por "-conteudo pessoal-"
	}
	print; #print $_
}
