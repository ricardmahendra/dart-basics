import 'dart:io';

void main() {
  stdout.write('Masukkan nama depan: ');
  final namaDepan = stdin.readLineSync()?.trim();
  if (namaDepan == null || namaDepan.isEmpty) {
    print('Nama depan tidak boleh kosong.');
    return;
  }

  stdout.write('Masukkan nama belakang: ');
  final namaBelakang = stdin.readLineSync()?.trim();
  if (namaBelakang == null || namaBelakang.isEmpty) {
    print('Nama belakang tidak boleh kosong.');
    return;
  }

  final namaLengkap = '$namaDepan $namaBelakang';
  print('Nama lengkap: $namaLengkap');
}