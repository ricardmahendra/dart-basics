import 'dart:io';

void main() {
  stdout.write('Masukkan string angka: ');
  final input = stdin.readLineSync()?.trim();
  if (input == null || input.isEmpty) {
    print('Input tidak boleh kosong.');
    return;
  }

  final angka = int.tryParse(input);
  if (angka == null) {
    print('String tidak dapat dikonversi ke int.');
  } else {
    print('Int: $angka');
  }
}