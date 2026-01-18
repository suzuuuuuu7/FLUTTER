import 'dart:io';

void main() {
  int count = 0;
  int max_attempt = 5;
  while (count < max_attempt) {
    print("Choose any one number that you have to suggest");
    int guess = int.parse(stdin.readLineSync()!);
    if (guess == 5) {
      print("Congratulation! you won the game");
      break;
    } else {
      if (count < max_attempt - 1) {
        print("Try again");
        if (count == 4) {
          print("Game over");
        }
      }
    }
    count += 1;
  }
}
