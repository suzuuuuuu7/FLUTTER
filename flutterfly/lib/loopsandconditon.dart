import 'dart:io';

void main() {
  int count = 0;
  int max_attempt = 5;
  stdout.write("choose any number from 1 t0 10\n");
  while (count < max_attempt) {
    int num = int.parse(stdin.readLineSync()!);
    if (num == 6) {
      stdout.write("congratulation! you win");
      stdout.write("Game finished");
      break;
    } else if (count == max_attempt - 2) {
      print("You have left only one attempt");
    } else if (count == 4) {
      stdout.write("game over\n");
      stdout.write("You losed the game");
    } else {
      stdout.write("try again\n");
    }
    count += 1;
  }
}
