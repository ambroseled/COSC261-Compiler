# Compiler
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

###Example Program
*
read n;  
sum := 0;  
while n > 0 do   
  sum := sum + n;  
  n := n - 1  
end;  
write sum  
*
