import 'dart:io';

void main() {
  stdout.write('Masukkan angka: ');
  final input = stdin.readLineSync()?.trim();
  final n = int.tryParse(input ?? '');
  if (n == null || n < 0) {
    print('Input tidak valid. Masukkan angka non-negatif.');
    return;
  }

  int faktorial = 1;
  int i = n;
  while (i > 1) {
    faktorial *= i;
    i--;
  }

  print('Faktorial $n adalah $faktorial');
}