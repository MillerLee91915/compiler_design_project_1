# Compiler Design Project 1

# Description

Choose the set of C language which you want to support in your compiler, and write the lexical analyzer with ANTLR.

# How to Use

1. Make sure your JDK and ANTLR downloaded
2. Download the file from 
    https://github.com/MillerLee91915/compiler_design_project_1
3. use makefile to compile and execute 

after execution, you will generate three result.txt according to sample.c

# Lexical Rule

According to the documentation written by Microsoft about C language. C program is consist of the following token

- Keywords
- Identifier
- Special Character
- Constant
- String
- Comments

### Keyword

Our C language uses the following keywords:

    auto, break, case, char, const, continue, default, do, double, else, enum, extern, float, for, goto, if, inline, int, long, register, restrict, return, short, signed, sizeof, static, struct, switch, typedef, union, unsigned, void, volatile

which include datatype, flow control statement, and others

### Identifier

The first character of an identifier name must be a non-digit 

Regular expersion: (nondigit)(nondigit|digit)*

### Special Character

Include logic operator, arithmetic operator, bitwise operator, and others

### Constant

Our C language only consider integer and floating-point numbers in decimal

    Constant: IntegerConstant | FloatingConstant;
    fragment IntegerConstant: ('0' | ('1' ..'9') (Digit)*);fragment FloatingConstant: Digitsequence? '.' Digitsequence;fragment Digitsequence: Digit+;

### String

    String: '"' (.)* '"';

### Comments

Support inline and block version.

    LineComment: '//' (.)* '\n';
    BlockComment: '/*' (.)* '*/';
