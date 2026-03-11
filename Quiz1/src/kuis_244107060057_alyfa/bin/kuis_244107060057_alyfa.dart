import 'package:kuis_244107060057_alyfa/kuis_244107060057_alyfa.dart'
    as kuis_244107060057_alyfa;

void main(List<String> arguments) {
  String nama = "Alyfa Zahra Qurrota Aini";
  String nim = "244107060057";
  double nilaiUnikNIM = 057;

  List<double> hargaBarang = [55000, 35500, 15000, 60000, 7500];
  hargaBarang.add(nilaiUnikNIM);

  String? pesanDiskon;

  double totalAwal = hitungTotal(hargaBarang);
}

double hitungTotal(List<double> daftarHarga) {
  double total = 0;
  for (var harga in daftarHarga) {
    total += harga;
  }
  return total;
}
