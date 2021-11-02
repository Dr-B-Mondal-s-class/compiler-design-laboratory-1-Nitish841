%{

  #include <stdio.h>
  #include <stdlib.h>
  int yylex(void);
  int yyerror(const char *s);

%}

%token HI BYE

%%

program:
         hi bye
        ;

hi:
        HI     { printf("Hello Nitish\n");   }
        ;
bye:
        BYE    { printf("Bye Nitish\n"); exit(0); }
         ;
