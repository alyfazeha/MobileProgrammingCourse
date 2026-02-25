import 'package:study_case_week2/study_case_week2.dart' as study_case_week2;

void main() {
  //study case 1 : konversi suhu
  double celsius = 30;
  double fahrenheit, kelvin;
  fahrenheit = (celsius * 9 / 5) + 32;
  kelvin = celsius + 273.15;
  print('$celsius°C = $fahrenheit°F');
  print('$celsius°C = $kelvin K');

  //study case 2 : kalkulator sederhana
  //Deklarasi variabel
  int angka1 = 10;
  int angka2 = 5; // Operasi aritmatika
  int penjumlahan = angka1 + angka2;
  int pengurangan = angka1 - angka2;
  int perkalian = angka1 * angka2;
  double pembagian = angka1 / angka2;
  int modulo = angka1 % angka2; // Menampilkan hasil
  print('$angka1 + $angka2 = $penjumlahan');
  print('$angka1 - $angka2 = $pengurangan');
  print('$angka1 * $angka2 = $perkalian');
  print('$angka1 / $angka2 = $pembagian');
  print('$angka1 % $angka2 = $modulo');

  //study case 3 : validasi data pengguna
  String username = 'budi123';
  String password = 'pass123';
  int umur = 17;
  bool isUsernameValid = username.length >= 6;
  bool isPasswordValid = password.length >= 6;
  bool isAdult = umur >= 18;
  bool canRegister = isUsernameValid && isPasswordValid;
  bool canAccessAdultContent = canRegister && isAdult;
  print('Dapat mendaftar: $canRegister');
  print('Dapat mengakses konten: $canAccessAdultContent');

  //study case 4 : perhitungan diskon
  double hargaBarang = 120000;
  int jumlahBeli = 3;
  String kodeMember = 'GOLD';
  double total = hargaBarang * jumlahBeli;
  double diskonPersen = 0;
  if (kodeMember == 'GOLD')
    diskonPersen = 0.1;
  else if (kodeMember == 'SILVER') diskonPersen = 0.05;
  double diskonTambahan = total > 300000 ? 0.05 : 0;
  double totalDiskon = total * (diskonPersen + diskonTambahan);
  double hargaAkhir = total - totalDiskon;
  print('Total: Rp$total');
  print('Diskon: Rp$totalDiskon');
  print('Akhir: Rp$hargaAkhir');

  //study case 5 : status kelulusan
  Map nilaiMahasiswa = {
    'Matematika': 85,
    'Fisika': 75,
    'Pemrograman': 90,
  };
  double total2 = 0;
  nilaiMahasiswa.forEach((matkul, nilai) {
    total2 += nilai;
  });
  double rataRata = total2 / nilaiMahasiswa.length;
  String status = rataRata >= 60 ? 'LULUS' : 'TIDAK LULUS';
  String predikat;
  if (rataRata >= 90) {
    predikat = 'A';
  } else if (rataRata >= 80) {
    predikat = 'B';
  } else if (rataRata >= 70) {
    predikat = 'C';
  } else {
    predikat = 'D/E';
  }
  print('Total Nilai: $total');
  print('Rata-rata: $rataRata');
  print('Status: $status');
  print('Predikat: $predikat');
}
