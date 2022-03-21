all:
	java -cp ./antlr-3.5.2-complete.jar org.antlr.Tool mylexer.g
	javac -cp ./antlr-3.5.2-complete.jar testLexer.java mylexer.java
	java -cp ./antlr-3.5.2-complete.jar:. testLexer sample1.c > result1.txt
	java -cp ./antlr-3.5.2-complete.jar:. testLexer sample2.c > result2.txt
	java -cp ./antlr-3.5.2-complete.jar:. testLexer sample3.c > result3.txt
clean:
	rm -f mylexer.class mylexer.java mylexer.tokens mylexer*.class testLexer.class result*.txt