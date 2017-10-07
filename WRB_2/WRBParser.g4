parser grammar WRBParser;
options {
language = Java;
tokenVocab = WRBLexer;
}
/∗∗ id = expr 					∗/
assign: ID ASSIGN expr;
/∗∗ expr = term ( (+|−) term )∗ 		∗/
expr: term ( operator +=(ADD|SUB) term )∗ ;
