class AkunBank {
  final String nama;
  final String nomorRekening;

  AkunBank(this.nama, this.nomorRekening);
}

class AccountModel {
  static final List<AkunBank> _akunTersimpan = [];
  static List<AkunBank> get akunTersimpan => _akunTersimpan;
  static void tambahAkun(String nama, String nomorRekening) {
    _akunTersimpan.add(AkunBank(nama, nomorRekening));
  }
  static void hapusAkun(AkunBank akun) {
    _akunTersimpan.remove(akun);
  }
  static bool nomorRekeningAda(String nomorRekening) {
    return _akunTersimpan.any((akun) => akun.nomorRekening == nomorRekening);
  }
}