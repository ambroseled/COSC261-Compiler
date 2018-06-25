.class public Program
.super java/lang/Object
.method public <init>()V
aload_0
invokenonvirtual java/lang/Object/<init>()V
return
.end method
.method public static main([Ljava/lang/String;)V
.limit locals 2
.limit stack 1024
new java/util/Scanner
dup
getstatic java/lang/System.in Ljava/io/InputStream;
invokespecial java/util/Scanner.<init>(Ljava/io/InputStream;)V
astore 0
aload 0
invokevirtual java/util/Scanner.nextInt()I
istore 1
sipush 5
iload 1
if_icmpgt l4
iload 1
sipush 10
if_icmpge l4
goto l3
l4:
iload 1
sipush 2
if_icmpne l5
goto l3
l5:
goto l1
l3:
getstatic java/lang/System/out Ljava/io/PrintStream;
sipush 5
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
goto l2
l1:
getstatic java/lang/System/out Ljava/io/PrintStream;
sipush 4
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
l2:
iload 1
sipush 5
if_icmplt l8
goto l7
l8:
goto l6
l7:
getstatic java/lang/System/out Ljava/io/PrintStream;
sipush 66
invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V
l6:
return
.end method
