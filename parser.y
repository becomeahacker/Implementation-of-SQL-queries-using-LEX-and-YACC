%{
    #include<stdio.h>
    #include<stdlib.h>
    int yyerror(char const *s) {
        printf("%s\n", s);
        printf("Mission Failed Successfully!");
        exit(0);
    }
    int yylex();
%}

%token SELECT UPDATE INSERT_INTO VALUES SET FROM  WHERE ORDER BY ASC DESC LIMIT AND OR DEFAULT BETWEEN EXIT
%token KEYWORD
%token IDENTIFIER STRING_LITERAL NEGATIVE_DIGIT POSITIVE_DIGIT FLOAT DATE COMPARISION_OPERATOR
%left OR
%left AND
%left BETWEEN
%left '+' '-'
%left '*' '/'
%left UMINUS
%left ',' '(' ')'
%%

start:  selectQuery ';' { printf("----------------------------------------------------------------\n| SCHOLAR_NO | NAME     | ADDRESS | PHONE     | MARKS | RESULT |\n----------------------------------------------------------------\n| 181112021  | Ram      | Delhi   | 987654321 | 95.5  | Pass   |\n----------------------------------------------------------------\n| 181112022  | Sam      | Eelhi   | 887654321 | 15.0  | Fail   |\n----------------------------------------------------------------\n| 181112023  | Tam      | Felhi   | 787654321 | 25.0  | Fail   |\n----------------------------------------------------------------\n| 181112024  | Uam      | Gelhi   | 687654321 | 43.5  | Pass   |\n----------------------------------------------------------------\n| 181112025  | Vam      | Helhi   | 587654321 | 62.5  | Pass   |\n----------------------------------------------------------------\n| 181112026  | Wam      | Ielhi   | 487654321 | 13.0  | Fail   |\n----------------------------------------------------------------\n| 181112027  | Xam      | Jelhi   | 387654321 | 60.0  | Pass   |\n----------------------------------------------------------------\n| 181112028  | Yam      | Kelhi   | 287654321 | 10.0  | Fail   |\n----------------------------------------------------------------\n| 181112029  | Zam      | Lelhi   | 187654321 | 90.0  | Pass   |\n----------------------------------------------------------------\n"); yyparse();}
    |   insertQuery ';' { printf("Insert Successfull\n"); yyparse();}
    |   updateQuery ';' { printf("Table Updated Successfully!\n"); yyparse();}
    ;
selectQuery:    SELECT col_names FROM table_name
    |    SELECT col_names FROM table_name option_list
    ;
insertQuery:    INSERT_INTO table_name VALUES '(' data ')'
    |   INSERT_INTO table_name '(' col_names ')' VALUES '(' data ')'
    ;         
col_names:      col_names ',' col_names
    |   col_name
    ;
data: data ',' data
    | IDENTIFIER
    | POSITIVE_DIGIT
    | '-' real_number %prec UMINUS
    | FLOAT
    ;
updateQuery:	UPDATE table_name SET assignment_list
    |   UPDATE table_name SET assignment_list option_list
    ;
assignment_list:	assignment_list ',' assignment_list
	|   '(' assignment ')'
    |	assignment
    ;
assignment: col_name '=' value;
table_name:	IDENTIFIER;
col_name:   IDENTIFIER;
value:  expr
    |   DEFAULT
    ;
expr:   expr '+' expr
    |   expr '-' expr
    |   expr '*' expr
    |   expr '/' expr
    |   real_number
    |   identifiers_strings
    ;
option_list:	WHERE condition_list
    |   ORDER BY order_by_list
    |   LIMIT POSITIVE_DIGIT
    |   WHERE condition_list ORDER BY order_by_list
    |   WHERE condition_list LIMIT POSITIVE_DIGIT
    |   ORDER BY order_by_list LIMIT POSITIVE_DIGIT
    |   WHERE condition_list ORDER BY order_by_list LIMIT POSITIVE_DIGIT
    ;
condition_list:	condition_list OR condition_list
	|	condition_list AND condition_list
    |   '(' condition ')'
	|	condition
	;
condition:	assignment
	|	col_name COMPARISION_OPERATOR real_number
    |   col_name BETWEEN real_number AND real_number
	;
identifiers_strings:	IDENTIFIER
	|	STRING_LITERAL
	;
real_number:	POSITIVE_DIGIT
	|	'-' real_number %prec UMINUS
	|	FLOAT
	;
order_by_list:	order_by_list ',' order_by_list
	|	col_name
	|	col_name ASC
    |   col_name DESC
    ;
%%

int main() {
    yyparse();
    return 1;
}
