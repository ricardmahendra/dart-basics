import 'dart:io';

void main() {
  stdout.write('Masukkan total tagihan: ');
  final totalInput = stdin.readLineSync()?.trim();
  final total = double.tryParse(totalInput ?? '');
  if (total == null || total <= 0) {
    print('Total tagihan tidak valid.');
    return;
  }

  stdout.write('Masukkan jumlah orang: ');
  final orangInput = stdin.readLineSync()?.trim();
  final orang = int.tryParse(orangInput ?? '');
  if (orang == null || orang <= 0) {
    print('Jumlah orang tidak valid.');
    return;
  }

  final pembagian = total / orang;
  print('Setiap orang harus membayar: $pembagian');
}