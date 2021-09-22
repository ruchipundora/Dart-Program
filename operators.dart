import 'dart:io';

void Arithmetic(a,b){
  print("a = $a b = $b");
  print("Sum: ${a+b}");
  print("Subtaction: ${b-a}");
  print("Negation of a: ${-a}");
  print("Total Divison of a and b: ${b/a}");
  print("Divison of a and b: ${b~/a}");
}

void Relational(a,b){
  print("a = $a b = $b");
  print('a>b is ${a>b}');
  print('b>a is ${b>a}');
  print('a>=b is ${a>=b}');
  print('a<=b is ${a<=b}');
  print('a!=b is ${a!=b}');
  print('a==b is ${a==b}');
}

void typeTest(c,a){
  print("a = $a c = $c");
  print(c is String);
  print(a is !String);
}

bitwiseOperator(int a, int b){
  print("a = $a b = $b");
  print("a AND b: ${a&b}");
  print("a OR b: ${a|b}");
  print("a XOR b: ${a^b}");
  print("a NOT : ${~a}");
  print("LEFT Shift on a: ${a << b}");
  print("RIGHT Shift on a: ${a >> b}");
}


assignmentOperator(d,e){
  print("a = $d b = $e");
  print('d = $d (Original)');
  print('d = ${d=7} (chnaged) ');
  e ??=d;
  print('e = $e if e is null then store d in e');
  e ??=11;
  print('e = $e if e is null the only the value changes');
  print('e = ${e=10} (Assigned value to a variable)');

}

logicalOperator(a,b){
  print('a>10 && b>10 = ${a>10 && b>10}');
  print('a>10 || b>10 = ${a>10 || b>10}');
  print('!(a>10) = ${!(a>10)}');
}

conditionalOperator(a,b){
    print("a = $a b = $b");
    var c = (a < 10) ? "Correct" : "Wrong";
    print('$c if condition is correct statement 1 else statement 2');
    var h=null;
    b = h ?? "h is null";
    print('$b if h is null');
  

}
void main(){
  int a=5;
  int b= 11;
  String c ='ruchi';
  int d=5;
  var e=null;
  int choice=1;

  do{
    print('1. Arithmetic\n2. Relational\n3. typeTest\n4. bitwiseOperator\n5. assignmentOperator\n6. logicalOperator\n7. conditionalOperator\nPress 0 to exit'  );
    stdout.write("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!); 

    switch (choice) {

      case 1 :
        Arithmetic(a, b);
        break;
      case 2 :
        Relational(a,b);
        break;
      case 3 :
        typeTest(c, a);
        break;
      case 4 :
        bitwiseOperator(a,b);
        break;
      case 5 :
        assignmentOperator(d,e);
        break;
      case 6 :
        logicalOperator(a,b);
        break;
      case 7 :
        conditionalOperator(a,b);
        break;
      default: 
        print('Invalid Choice');
        break;
    }
  }while(choice!=0);
  
}