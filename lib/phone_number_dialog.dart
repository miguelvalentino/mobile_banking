import 'package:flutter/material.dart';

class PhoneNumberDialog extends StatefulWidget {
  final String price;

  const PhoneNumberDialog({super.key, required this.price});


  @override
  PhoneNumberDialogState createState() => PhoneNumberDialogState();
}

class PhoneNumberDialogState extends State<PhoneNumberDialog> {
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Masukkan Nomor Telepon'),
      content: TextField(
        controller: _phoneNumberController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: 'Nomor Telepon',
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            if (_phoneNumberController.text.isNotEmpty) {
              _showSuccessMessage(context);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Nomor telepon tidak boleh kosong')),
              );
            }
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }

  void _showSuccessMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 5), () {
          if (mounted) {
            Navigator.of(context).pop();
            Navigator.of(context).pop();
          }
        });
        return AlertDialog(
          title: const Text('Pembayaran Berhasil'),
          content: const Text('Pembayaran Anda telah berhasil.'),
          actions: [
            TextButton(
              onPressed: () {
                if (mounted) {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop(); 
                }
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}