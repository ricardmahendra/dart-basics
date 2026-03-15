import 'dart:io';

void main() {
  stdout.write('Masukkan principal (p): ');
  final pInput = stdin.readLineSync()?.trim();
  final p = double.tryParse(pInput ?? '');
  if (p == null) {
    print('Input principal tidak valid.');
    return;
  }

  stdout.write('Masukkan time (t): ');
  final tInput = stdin.readLineSync()?.trim();
  final t = double.tryParse(tInput ?? '');
  if (t == null) {
    print('Input time tidak valid.');
    return;
  }

  stdout.write('Masukkan rate (r): ');
  final rInput = stdin.readLineSync()?.trim();
  final r = double.tryParse(rInput ?? '');
  if (r == null) {
    print('Input rate tidak valid.');
    return;
  }

  final bunga = (p * t * r) / 100;
  print('Bunga sederhana: $bunga');
}