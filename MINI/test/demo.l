%{
	#include<stdio.h>
	int word=0;
%}
%%
[a-bA-Z]"."|[a-zA-Z] {word++;}
.* ;
%%
int yywrap(){
	return 1;
}
int main(){
	yylex();
	printf("\nNo of words : %d.",word);
	return 0;
}