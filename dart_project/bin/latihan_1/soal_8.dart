import 'dart:io';

void main() {
  stdout.write('Masukkan bilangan pertama: ');
  final aInput = stdin.readLineSync()?.trim();
  final a = int.tryParse(aInput ?? '');
  if (a == null) {
    print('Input pertama tidak valid.');
    return;
  }

  stdout.write('Masukkan bilangan kedua: ');
  final bInput = stdin.readLineSync()?.trim();
  final b = int.tryParse(bInput ?? '');
  if (b == null) {
    print('Input kedua tidak valid.');
    return;
  }

  print('Sebelum penukaran: a = $a, b = $b');

  // Tukar menggunakan temporary variable
  int temp = a;
  int newA = b;
  int newB = temp;

  print('Sesudah penukaran: a = $newA, b = $newB');
}