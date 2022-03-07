%{
	#include<stdio.h>
	#include "project.tab.h"
%}

keyword "shu"
keyword1 "ane"
keyword2 "bane sarkha number che"
keyword3 "mathi kayo number"
keyword4 "che"
keyword5 "number kayo che"
keyword6 "ke"

op "moto"|"nano"|"sarkha"
eol "?"
sep ","
digit [0-9]
ws " "

%%
{keyword} { 
	printf("%10s : keyword\n",yytext); 
	return K;
	}
{keyword1} { 
	printf("%10s : keyword1\n",yytext); 
	return K1;
	}
{keyword2} { 
	printf("%10s : keyword2\n",yytext); 
	return K2;
	}
{keyword3} { 
	printf("%10s : keyword3\n",yytext); 
	return K3;
	}
{keyword4} { 
	printf("%10s : keyword4\n",yytext); 
	return K4;
	}
{keyword5} { 
	printf("%10s : keyword5\n",yytext); 
	return K5;
	}
{keyword6} { 
	printf("%10s : keyword6\n",yytext); 
	return K6;
	}
{eol} { 
	printf("%10s : End of line\n",yytext);
	return E;
	}
{sep} { 
	printf("%10s : Seperation\n",yytext);
	return S;
	}
{op} { 
	printf("%10s : Operator\n",yytext); 
	return O;
	}
{digit}+ {  
	printf("%10s : digit\n",yytext); 
	return I;
	}
{digit}+"."{digit}* {  
	printf("%10s : digit\n",yytext); 
	return I;
	}
{ws} {
	return W;
	}

. { 
	printf("\nString is Invalid"); exit(1);
	}

%%
int yywrap()
{
	return 1;
}