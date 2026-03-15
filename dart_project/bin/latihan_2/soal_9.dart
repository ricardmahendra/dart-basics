import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  final angkaRahasia = random.nextInt(100) + 1; // 1 to 100

  int tebakan;
  int jumlahTebakan = 0;
  do {
    stdout.write('Tebak angka antara 1 dan 100: ');
    final input = stdin.readLineSync()?.trim();
    tebakan = int.tryParse(input ?? '') ?? 0;
    jumlahTebakan++;

    if (tebakan < 1 || tebakan > 100) {
      print('Tebakan harus antara 1 dan 100.');
    } else if (tebakan < angkaRahasia) {
      print('Terlalu kecil!');
    } else if (tebakan > angkaRahasia) {
      print('Terlalu besar!');
    } else {
      print('Benar! Angka rahasianya adalah $angkaRahasia. Anda menebak dalam $jumlahTebakan kali.');
    }
  } while (tebakan != angkaRahasia);
}