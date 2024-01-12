module Literals

extend lang::std::Layout;

// layout Whitespace = [\t-\n\r\ ]*;

// lexical Integer = [0-9]+;

lexical Identifier =  [a-zA-Z][a-zA-Z0-9]* !>> [a-zA-Z0-9];

lexical Int = [0-9]+ !>> [0-9];

lexical LAYOUT = [\t-\n\r\ ];

lexical String = [\"] StringChar* [\"];
lexical StringChar = ![\\ \" \n] | "\\" [\\ \"];

// layout LAYOUTLIST = LAYOUT*  !>> [\t-\n\r\ ] ;

