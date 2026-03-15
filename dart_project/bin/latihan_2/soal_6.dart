import 'dart:io';

void main() {
  stdout.write('Masukkan tahun: ');
  final input = stdin.readLineSync()?.trim();
  final tahun = int.tryParse(input ?? '');
  if (tahun == null || tahun <= 0) {
    print('Input tidak valid.');
    return;
  }

  bool isKabisat = false;
  if (tahun % 4 == 0) {
    if (tahun % 100 != 0 || tahun % 400 == 0) {
      isKabisat = true;
    }
  }

  if (isKabisat) {
    print('$tahun adalah tahun kabisat.');
  } else {
    print('$tahun bukan tahun kabisat.');
  }
}