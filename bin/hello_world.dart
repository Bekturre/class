






import 'dart:math';

void main(){
  
 Circle circ = Circle(radius: 200, color: 'red');
 print(circ.color);
 print(circ.radius);

 Student Bektur = Student(name: 'Bektur', age: 17, point: [12,45,23,19,50]);
 print(Bektur.srPoint());

car toyota = car(marka: 'toyota', model: 'camry 55', year: 2016);
toyota.printAll();

book books = book(Author: 'Наполеон Хилл', Name: 'Думай и богатей', year: 1937);
books.printall();

Rectangle t = Rectangle(height: 30, width: 50);
print(t.getp());
print(t.gets());

BankAccount Bish = BankAccount(name: 'Bektur', nomerScheta:203220394);
 Bish.deposit(summ: 1000);
  Bish.ShowBalance();


Product pepsi = Product(name: 'pepsi', value: 90, Sum: 20);
pepsi.printAll();

  Triangle l = Triangle(right: 25, left: 25, down: 30);
 print(l.S());
   
}


class Circle {
double radius;
String color;
Circle({required this.radius , required this.color});

double getradius(){
  return radius;
}

String getcolor(){
  return color;
}
}



class Student{
  String name;
  int age;
  List <int> point;
  Student({required this.name, required this.age, required this.point});
  double srPoint(){
    int summ =0;
    for(int i =0; i < point.length; i++){
      summ += point[i];
    }
    return summ / point.length;
  }
  void printAll(){
    print('$name, $age, $point, ${srPoint()}');
  }
}



class car{
    String marka;
    String model;
    int year;
 car({required this.marka, required this.model, required this.year}); 
  printAll(){
    print('$marka, $model, $year');
  }  
}



class book{
  String Name;
  String Author;
  int year;
   book({required this.Author, required this.Name,required this.year});
   printall(){
    print('$Author, $Name, $year');
   }

}



class Rectangle {
  int width;
  double height;
  Rectangle({required this.height, required this.width});
  double getp(){
      return (width + height) * 2;
    }
    double gets(){
      return width * height;
    }
    
    
    
}


class BankAccount {
  String name;
  double balance = 5000;
  int nomerScheta;
  BankAccount({required this.name, required this.nomerScheta});
  void deposit({required double summ}){
    balance+=summ;
  }
  void withdrawals({required double summ}){

  balance -= summ;

  }
  void ShowBalance(){
    print(balance);
  }


}


class Product {
  String name;
  int value;
  int Sum;
  Product({required this.name, required this.value, required this.Sum});
   obshvalue(){
   return value * Sum; 
  }
  printAll(){
    print('$name,$value,$Sum ${obshvalue()}');
  }
 
    
  
}

class employee {
  String name;
  String jobtitle;
  double Salary;
  employee({required this.name, required this.jobtitle, required this.Salary});
  procent(double percentage ){
    double a = Salary * (percentage ~/100)  ;
    Salary+=a;
  }
  printall(){
    print('$name, $jobtitle, $Salary, ');
  }
}

class Triangle{
  int right;
  int left;
  int down;
  Triangle({required this.right,required this.left,required this.down});
  double S(){
    double s = (right+left+down) / 2;
    return (s * (s - right) * (s - left) * (s - down));
  }
 

}