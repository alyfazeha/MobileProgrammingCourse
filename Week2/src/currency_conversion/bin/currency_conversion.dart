import 'package:currency_conversion/currency_conversion.dart'
    as currency_conversion;

void main() {
  const double usdRate = 15500; // 1 USD = Rp 15.500
  const double eurRate = 16800; // 1 EUR = Rp 16.800
  const double jpyRate = 105; // 1 JPY = Rp 105
  double rupiah = 100000;

  double usd = rupiah / usdRate;
  double eur = rupiah / eurRate;
  double jpy = rupiah / jpyRate;

  print("Rupiah: Rp $rupiah");
  print("USD: \$$usd;");
  print("EUR: €$eur;");
  print("JPY: ¥$jpy;");
}
