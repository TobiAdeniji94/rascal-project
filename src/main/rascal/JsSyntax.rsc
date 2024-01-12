module JsSyntax

extend Literals;

start syntax Prog = prog: JavaScript+ Semicolon*;

syntax Semicolon = ";";

syntax JavaScript 
    = Exp Semicolon*
    | Conditionals
    | Functions
    // | Classes
    ;

syntax Exp 
    = Identifier
    | Int
    | String
    | bracket "(" Exp ")"
    > left div: Exp "/" Exp
    > left mul: Exp "*" Exp
    > left add: Exp "+" Exp
    > left sub: Exp "-" Exp
    > left eql: Exp "=" Exp
    > left \mod: Exp "%" Exp
    > left less: Exp "\<" Exp
    > left greater: Exp "\>" Exp
    > left lessEq: Exp "\<=" Exp
    > left greaterEq: Exp "\>=" Exp
    > left notEq: Exp "!=" Exp
    > left eq: Exp "==" Exp
    > left and: Exp "&&" Exp
    > left or: Exp "||" Exp
    > left ternary: Exp "?" Exp ":" Exp
    > left comma: Exp "," Exp
    > left arrow: Exp "=\>" Exp
    > returnExp: "return" Exp
    ;

syntax Conditionals 
    = ifCond: "if" "(" Exp ")" "{" JavaScript "}"
    | ifElse: "if" "(" Exp ")" "{" JavaScript "}" ElseIf*  "else" "{" JavaScript "}"
    // | elseIf: "else" "if" "(" Exp ")" "{" JavaScript "}"
    ;

syntax ElseIf = "else" "if" "(" Exp ")" "{" JavaScript "}";

syntax Functions 
    = function: "function" Identifier "("Exp ","Exp ")" "{" JavaScript"}"
    | function: "function" Identifier "("Exp ")" "{" JavaScript"}"
    | function: "const" Identifier "=" "("Exp ","Exp ")" "=\>" "{" JavaScript "}"
    // | function: "function" "(" ")" "{" JavaScript "}" "(" Exp ")"
    ;