import 'package:flutter/material.dart';
import 'package:mobile_banking/buttonsfile/e_com_button.dart';
import 'package:mobile_banking/e_commerce.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pembayaran'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/BG_bank.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Tombol Pulsa
              ElevatedButton(
                onPressed: () {
                  _showPaymentOptions(context, 'Pulsa');
                },
                child: const Text('Pulsa'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 150, vertical: 20),
                  backgroundColor: Colors.lightBlueAccent,
                ),
              ),
              const SizedBox(height: 20),

              // Tombol Internet
              ElevatedButton(
                onPressed: () {
                  _showPaymentOptions(context, 'Internet');
                },
                child: const Text('Internet'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 150, vertical: 20),
                  backgroundColor: Colors.lightBlueAccent, 
                ),
              ),
              const SizedBox(height: 20),

              // Tombol Pajak
              ElevatedButton(
                onPressed: () {
                  _showPaymentOptions(context, 'Pajak');
                },
                child: const Text('Pajak'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 150, vertical: 20),
                  backgroundColor: Colors.lightBlueAccent, 
                ),
              ),

                //sementara buat tombol ecom pln
                const SizedBox(height: 20),
                EComButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ECommerce(),

                      ),
                    );
                  },
                ),

            ],
          ),
        ),
      ),
    );
  }

  void _showPaymentOptions(BuildContext context, String title) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.5, // 50% of the screen height
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text('Pilih mau beli berapa untuk $title', 
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: const [
                    _PriceButton(price: 'Rp.20.000'),
                    _PriceButton(price: 'Rp.50.000'),
                    _PriceButton(price: 'Rp.80.000'),
                    _PriceButton(price: 'Rp.100.000'),
                    _PriceButton(price: 'Rp.200.000'),
                    _PriceButton(price: 'Rp.500.000'),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _PriceButton extends StatefulWidget {
  final String price;

  const _PriceButton({required this.price});

  @override
  __PriceButtonState createState() => __PriceButtonState();
}

class __PriceButtonState extends State<_PriceButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(8), // Sudut melingkar kecil
      ),
      child: ElevatedButton(
        onPressed: () {
          _showSuccessMessage(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Center(
          child: Text(widget.price, style: const TextStyle(fontSize: 16)),
        ),
      ),
    );
  }

  void _showSuccessMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 5), () {
          if (mounted) {
            Navigator.of(context).pop(); // Close the success dialog
            Navigator.of(context).pop(); // Close the bottom sheet
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
