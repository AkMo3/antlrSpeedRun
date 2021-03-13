grammar Hello;            // Define a grammar called Hello

init
    : classToken
    | methodToken
    | varToken
    ;

classToken: accessIden CLASS_IDEN VAR_NAME '{' expr '}';

methodToken: accessIden returnType VAR_NAME '{' '}';

expr
    : expr '*' expr
    | expr '/' expr
    | expr '+' expr
    | expr '-' expr
    | expr '=' expr ';'
    | expr '=' VAR_NAME ';'
    | VAR_NAME '=' VAR_NAME '+' INT ';'
    | VAR_NAME '=' INT ';'
    ;

varToken: dataType VAR_NAME;

/* Token Types */
accessIden
    : 'public'
    | 'private'
    | 'protected'
    ;

VAR_NAME: [a-zA-Z]+;

returnType
    : 'void'
    | 'int'
    | 'char'
    | 'String'
    ;

dataType
    : 'int'
    | 'char'
    | 'String'
    ;

WS: [ \t\r\n]+ -> skip;

CLASS_IDEN: ' class ';

RIGHT_CURLY: '{';

SEMI_COLON : ';';

EQUAL_TOKEN: '=';

INT : [0-9]+;

LEFT_CURLY: '}';