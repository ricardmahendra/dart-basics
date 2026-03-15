import 'dart:io';

void main() {
  stdout.write('Masukkan usia Anda: ');
  final input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print('Input tidak valid. Harap masukkan angka usia.');
    return;
  }

  final usia = int.tryParse(input.trim());
  if (usia == null) {
    print('Input tidak valid. Harap masukkan angka usia.');
    return;
  }

  const usiaMenentukanPemilih = 17;

  if (usia >= usiaMenentukanPemilih) {
    print('Usia $usia tahun: Anda memenuhi syarat untuk memilih.');
  } else {
    print('Usia $usia tahun: Anda belum memenuhi syarat untuk memilih.');
  }
}