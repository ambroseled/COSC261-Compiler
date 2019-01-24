# COSC261 Compiler
Compiler for a basic custom programing language

## Language Gramar
Program = Statements  
Statements = Statement(;Statement)\*  
Statement = If|While|Assigment  

If = *if* Comparison *then* Statements *end*  
While = *while* Comparison *do* Statements *end*  
Assigment = *identifier :=* Expression  

Comparison = Expression Relation Expression  
Realation = *=*|*!=*|*<*|*<=*|*>*|*>=*  

Expression = Term \(\(*+*|*-*\)Term)\*  
Term = Factor\(\(*\**|*/*\)Factor\)\*  
Factor = \(Expression\)|*number*|*identifier*  

## Instuctions of use

### Stage 1  
The program is passed via standard input, the java assembly is  
expected via standard output.  

*python3 compiler.py < program > Program.j*  

Where the compiler is in *compiler.py* and the program  
is in the file *program* and the java assembly goes to *Program.j* file.  
An error a this stage is shown by,  

*Error in compiling program X \(HINT\)*  

### Stage 2  
The java assembly is then translated to a java class file using the  
jasmin assembler, see http://jasmin.sourceforge.net/. Jasmin is in  
the file *jasmin.jar*.  

*java -Xmx100m -jar jasmin.jar Program.j*  

This generates the class file Program.class.  
An error at this stage is shown by,  

*Error in assembling Java byte code for program X \(HINT\)*  

### Stage 3
The java class file is then run using Java with the test passed  
via standard input. The expected result is given via standard output.  
Assuming the test is in the file *test_input* and the result is in the  
file *test_output*.  

*java -Xmx100m Program < test_input > test_output*  

An error at this stage is shown by,  

*Error in running Java byte code for test Y of program X \(HINT\)*  

A failed test is shown by,    

*Wrong output for test Y of program X \(HINT\)*  

If the test is passed no output is given.
