void main() {
  final daftar = [1, 2, 3, 4, 5];
  print('Daftar asli: $daftar');

  final daftarTerbalik = daftar.reversed;
  print('Daftar dalam urutan terbalik:');
  for (final elemen in daftarTerbalik) {
    print(elemen);
  }
}