



import 'dart:io';

import 'dart:math';




void main(){
print('выберите режим игры:');
print('1.человек угадывает');
print('2. компьютер угадывает');



while (true) {
  int choice = int.tryParse(stdin.readLineSync()!)?? 0;
 print('Введите количество раундов:');
int rounds = int.tryParse(stdin.readLineSync()!)?? 0;

 for(int round = 1; round <= rounds; round++){
print('Раунд $round');
 
if (choice == 1){
  funccomp();
   
  }else if (choice == 2){
funchuman();
  } 
}
}
}



funccomp(){
 print('компьютер загадал число:');
 var comp = Random().nextInt(100) + 1; 
var attempts = 0;
   while (true) {
      attempts++;
var userGuess = int.parse(stdin.readLineSync()!);
      
if (userGuess < comp) {
   print("Больше");
} else if (userGuess > comp) {
  print("Меньше");
} else if (userGuess == comp) {
  print(" Вы угадали число $comp  за $attempts попыток");
}
 }
  
} 





funchuman(){
  int min = 1;
  int max = 100;
  var attempts = 0;
  var guessednum = false;
  print('человек загадал число:');
  while (!guessednum) {
    var compGuess = (min + max) ~/ 2;
    attempts++;

    print(compGuess);
    print("1. Больше");
    print("2. Меньше");
    print("3. Туура");

   int Response = int.tryParse(stdin.readLineSync()!)?? 0;

    switch (Response) {
      case 1:
        min = compGuess + 1;
        break;
      case 2:
       max = compGuess - 1;
        break;
      case 3:
        guessednum = true;
        print('Все угадал за $attempts попыток');
        break;
     
    }
   
  }
  
}