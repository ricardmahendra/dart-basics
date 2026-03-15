import 'dart:io';

void main() {
  stdout.write('Masukkan angka: ');
  final input = stdin.readLineSync()?.trim();
  final angka = int.tryParse(input ?? '');
  if (angka == null) {
    print('Input tidak valid.');
    return;
  }

  int temp = angka.abs(); // handle negative
  int jumlahDigit = 0;
  if (temp == 0) {
    jumlahDigit = 1;
  } else {
    while (temp > 0) {
      temp ~/= 10;
      jumlahDigit++;
    }
  }

  print('Jumlah digit dari $angka adalah $jumlahDigit');
}