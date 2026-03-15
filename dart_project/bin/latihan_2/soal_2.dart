import 'dart:io';

void main() {
  stdout.write('Masukkan angka: ');
  final input = stdin.readLineSync()?.trim();
  final angka = int.tryParse(input ?? '');
  if (angka == null) {
    print('Input tidak valid.');
    return;
  }

  switch (true) {
    case var _ when angka > 0:
      print('Angka positif');
      break;
    case var _ when angka < 0:
      print('Angka negatif');
      break;
    default:
      print('Angka nol');
  }
}