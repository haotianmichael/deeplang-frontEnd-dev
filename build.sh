#!/bin/zsh


ANTLR_HOME="$PWD/third_party/ANTLR"
ANTLR=`ls $ANTLR_HOME`
ANTLR_JAR="$ANTLR_HOME/$ANTLR"
alias antlr4="java -jar $ANTLR_JAR"

Lexer="$PWD/xxx/parsing/DLLexer.g4"
Parser="$PWD/xxx/parsing/DLParser.g4"

antlr4 -Werror -Dlanguage=Cpp -listener -visitor -lib lib/antlr lib/antlr/DLLexer.g4  lib/antlr/DLParser.g4  -o gen
#antlr4 -Werror -Dlanguage=Cpp -listener -visitor "$Lexer" "$Parser" -o gen

if [ $? != 0 ]
then
    echo "ANTLR4 Error! Please make sure it's in ./third_party/ANTLR/"
fi
