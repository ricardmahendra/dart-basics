import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  final angkaRahasia = random.nextInt(10) + 1; // 1 to 10

  int tebakan;
  do {
    stdout.write('Tebak angka antara 1 dan 10: ');
    final input = stdin.readLineSync()?.trim();
    tebakan = int.tryParse(input ?? '') ?? 0;

    if (tebakan < 1 || tebakan > 10) {
      print('Tebakan harus antara 1 dan 10.');
    } else if (tebakan != angkaRahasia) {
      print('Salah! Coba lagi.');
    }
  } while (tebakan != angkaRahasia);

  print('Benar! Angka rahasianya adalah $angkaRahasia');
}