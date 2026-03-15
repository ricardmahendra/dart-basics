import 'dart:io';

void main() {
  stdout.write('Masukkan angka: ');
  final input = stdin.readLineSync()?.trim();
  final angka = int.tryParse(input ?? '');
  if (angka == null || angka <= 0) {
    print('Input tidak valid. Masukkan angka positif.');
    return;
  }

  for (int i = 0; i < angka; i++) {
    for (int j = 0; j < angka; j++) {
      stdout.write('$angka ');
    }
    print('');
  }
}