import 'dart:io';

void main() {
  stdout.write('Masukkan hari dalam seminggu: ');
  final hari = stdin.readLineSync()?.trim()?.toLowerCase();
  if (hari == null || hari.isEmpty) {
    print('Input tidak valid.');
    return;
  }

  switch (hari) {
    case 'senin':
    case 'selasa':
    case 'rabu':
    case 'kamis':
    case 'jumat':
      print('Hari kerja');
      break;
    case 'sabtu':
    case 'minggu':
      print('Akhir pekan');
      break;
    default:
      print('Hari tidak valid');
  }
}