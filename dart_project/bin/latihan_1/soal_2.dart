import 'dart:io';

void main() {
  stdout.write('Masukkan nama Anda: ');
  final nama = stdin.readLineSync()?.trim();

  if (nama == null || nama.isEmpty) {
    print('Nama tidak boleh kosong.');
    return;
  }

  print('Hello, saya "$nama"');
  print("Hello, saya '$nama'");
}