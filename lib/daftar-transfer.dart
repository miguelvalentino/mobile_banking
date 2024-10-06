import 'package:flutter/material.dart';
import 'account_model.dart';

class DaftarTransfer extends StatefulWidget {
  const DaftarTransfer({Key? key}) : super(key: key);

  @override
  _DaftarTransferState createState() => _DaftarTransferState();
}

class _DaftarTransferState extends State<DaftarTransfer> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _rekeningController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Rekening'),
        backgroundColor: const Color.fromARGB(255, 0, 89, 255),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_baru.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _namaController,
                decoration: const InputDecoration(
                  labelText: 'Nama Pemilik Rekening',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _rekeningController,
                decoration: InputDecoration(
                  labelText: 'Nomor Rekening',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: _tambahRekening,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: AccountModel.akunTersimpan.length,
                  itemBuilder: (context, index) {
                    final akun = AccountModel.akunTersimpan[index];
                    return ListTile(
                      title: Text(akun.nama),
                      subtitle: Text(akun.nomorRekening),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => _hapusRekening(akun),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _tambahRekening() {
    final nama = _namaController.text;
    final nomorRekening = _rekeningController.text;
    if (nama.isNotEmpty && nomorRekening.isNotEmpty) {
      if (AccountModel.nomorRekeningAda(nomorRekening)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text('Nomor rekening sudah ada dalam daftar')),
        );
      } else {
        setState(() {
          AccountModel.tambahAkun(nama, nomorRekening);
          _namaController.clear();
          _rekeningController.clear();
        });
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Mohon isi nama dan nomor rekening')),
      );
    }
  }

  void _hapusRekening(AkunBank akun) {
    setState(() {
      AccountModel.hapusAkun(akun);
    });
  }
}
