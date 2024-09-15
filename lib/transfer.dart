import 'package:flutter/material.dart';
import 'account_model.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  AkunBank? _akunTerpilih;
  final TextEditingController _nominalController = TextEditingController();

  void _lakukanTransfer() {
    if (_akunTerpilih != null && _nominalController.text.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
            'Transfer berhasil ke ${_akunTerpilih!.nama} (${_akunTerpilih!.nomorRekening}) sebesar Rp${_nominalController.text}'),
      ));
      _nominalController.clear();
      setState(() {
        _akunTerpilih = null;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Pilih rekening dan masukkan nominal transfer'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer Dana'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButtonFormField<AkunBank>(
              value: _akunTerpilih,
              decoration: const InputDecoration(
                labelText: 'Pilih Rekening Tujuan',
                border: OutlineInputBorder(),
              ),
              isExpanded: true,
              onChanged: (AkunBank? newValue) {
                setState(() {
                  _akunTerpilih = newValue;
                });
              },
              items: AccountModel.akunTersimpan.map((AkunBank akun) {
                return DropdownMenuItem<AkunBank>(
                  value: akun,
                  child: Text('${akun.nama} - ${akun.nomorRekening}'),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _nominalController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Nominal Transfer',
                border: OutlineInputBorder(),
                prefixText: 'Rp ',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _lakukanTransfer,
              child: const Text('Kirim Transfer'),
            ),
          ],
        ),
      ),
    );
  }
}
