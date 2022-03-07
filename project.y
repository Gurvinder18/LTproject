%{
	#include<stdio.h>
	#include<stdlib.h>
	#define YYERROR_VERBOSE 1
	void yyerror(char *err);
%}

%token K K1 K2 K3 K4 K5 K6 O I E S W

%% 
G: A {printf("\nThis sentence is valid.\n"); return 0;};
A: K W I W K1 W I W K2 W E {}|
I W S W I W K3 W O W K4 W E{}|
O W K5 W I W K6 W I W E {};
%%


void yyerror(char *err) {
	//printf("Error: ");
	//fprintf(stderr, "%s\n", err);
	printf("\nString is Invalid\n");
	exit(1);
}

void main(){
	printf("Enter String: ");
	yyparse();
	printf("\n Valid Expression\n");
}