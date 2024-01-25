# Programming Assignment #1
A Flex generated lexer that reads in a stream of characters making up the source code of a program and dividing the input into tokens.
**Instructions and Commands**
1. First and foremost, a txt file of the source code must be included.
2. With lex.l, use the command - 
    - 'lex lex.l'
    - This will then generate the lex.yy.c file.
3. Then use the following commands:
    - 'gcc lex.yy.c'
    - './a.out <filename' to have the output in the commandline.
    or
    - './a.out <filename> (file destination)' to save the output in a file.
    - Which is the extent of the whole program

