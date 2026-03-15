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

  if (b == 0) {
    print('Tidak bisa membagi dengan nol.');
    return;
  }

  final hasilBagi = a ~/ b;
  final sisa = a % b;
  print('Hasil bagi: $hasilBagi');
  print('Sisa: $sisa');
}