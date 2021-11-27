%{
int numCaract = 0, numMots = 0 , numLignes = 0;
%}
%%
\n		{numLignes++; numCaract ++;}
[^ \t\n]+ 	{numMots++; numCaract += yyleng;}
.		{numCaract ++;}
%%
int main(){
yylex();
printf("%d\t%d\t%d", numCaract, numMots, numLignes);
}
