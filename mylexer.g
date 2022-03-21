lexer grammar mylexer;

options {
	language = Java;
}

/*----------------------*/
/*   Reserved Keywords  */
/*----------------------*/

Auto	: 'auto';
Break	: 'break';
Case	: 'case';
Char	: 'char';
Const	: 'const';
Continue: 'continue';
Default	: 'default';
Do		: 'do';
Double	: 'double';
Else	: 'else';
Enum	: 'enum';
Extern	: 'extern';
Float	: 'float';
For		: 'for';
Goto	: 'goto';
If		: 'if';
Inline	: 'inline';
Int		: 'int';
Long	: 'long';
Register: 'register';
Restrict: 'restrict';
Return	: 'return';
Short	: 'short';
Signed	: 'signed';
Sizeof	: 'sizeof';
Static	: 'static';
Struct	: 'struct';
Switch	: 'switch';
Typedef	: 'typedef';
Union	: 'union';
Unsigned: 'unsigned';
Void	: 'void';
Volatile: 'volatile';
While	: 'while';

/*----------------------*/
/*   Special function   */
/*----------------------*/

Printf	: 'printf';
Main	: 'main';

/*----------------------*/
/*       Operator       */
/*----------------------*/

Not		: '!';
Less	: '<';
LessEqual: '<=';
Greater	: '>';
GreaterEqual: '>=';
Equal	: '==';
NotEqual: '!=';
AndAnd	: '&&';
OrOr	: '||';

Plus	: '+';
PlusPlus: '++';
Minus	: '-';
MinusMinus: '--';
Star	: '*';
Div		: '/';
Mod		: '%';
StarAssign: '*=';
DivAssign: '/=';
ModAssign: '%=';
PlusAssign: '+=';
MinusAssign: '-=';

Assign	: '=';

LeftShift: '<<';
RightShift: '>>';
And		: '&';
Or		: '|';
Caret	: '^';
LeftShiftAssign: '<<=';
RightShiftAssign: '>>=';
AndAssign: '&=';
XorAssign: '^=';
OrAssign: '|=';
Tilde	: '~';

/*----------------------*/
/*  Special  Characters */
/*----------------------*/

Comma	: ',';
Question: '?';
Colon	: ':';
Semi	: ';';
Hastag	: '#';

LeftParen: '(';
RightParen: ')';
LeftBracket: '[';
RightBracket: ']';
LeftBrace: '{';
RightBrace: '}';

Arrow	: '->';
Dot		: '.';
Ellipsis: '...';

/*----------------------*/
/*      Identifier      */
/*----------------------*/

Identifier: Nondigit ( Nondigit | Digit)*;
fragment Nondigit: 'a'..'z' | 'A'..'Z' | '_';
fragment Digit: '0'..'9';

/*----------------------*/
/*      Constant        */
/*----------------------*/

Constant: IntegerConstant | FloatingConstant;
// | CharacterConstant;
fragment IntegerConstant: ('0' | ('1' ..'9') (Digit)*);
fragment FloatingConstant: Digitsequence? '.' Digitsequence;
fragment Digitsequence: Digit+;

/*----------------------*/
/*       String         */
/*----------------------*/

String: '"' (.)* '"';

/*----------------------*/
/*      Comment         */
/*----------------------*/

LineComment: '//' (.)* '\n';
BlockComment: '/*' (.)* '*/';

NewLine: '\n' {skip();};
WhiteSpace: (' ' | '\r' | '\t')+ {skip();};