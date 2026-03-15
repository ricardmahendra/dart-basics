import 'dart:io';

void main() {
  stdout.write('Masukkan string: ');
  final input = stdin.readLineSync()?.trim();
  if (input == null || input.isEmpty) {
    print('Input tidak boleh kosong.');
    return;
  }

  final tanpaSpasi = input.replaceAll(' ', '');
  print('String tanpa spasi: $tanpaSpasi');
}