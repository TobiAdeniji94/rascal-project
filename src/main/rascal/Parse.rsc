module Parse

import vis::Text;

import ArithmeticExpressions;

import ParseTree;

import Expression;


Expression::Exp parseExp(str input) = implode(#Expression::Exp, parse(#ArithmeticExpressions::Exp, input));