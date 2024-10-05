import 'package:flutter/material.dart';
import 'phone_number_dialog.dart';
import 'pajak.dart';

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
        title: const Text('Payment'),
        backgroundColor: const Color.fromARGB(255, 0, 89, 255),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg_baru.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _showPaymentOptions(context, 'Pulsa');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 10),
                  backgroundColor: const Color.fromARGB(255, 0, 89, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Pulsa',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 50),

              ElevatedButton(
                onPressed: () {
                  _showPaymentOptions(context, 'Internet');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                  backgroundColor: const Color.fromARGB(255, 0, 89, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Internet',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 50),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PajakPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 160, vertical: 10),
                  backgroundColor: const Color.fromARGB(255, 0, 89, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Pajak',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}

  void _showPaymentOptions(BuildContext context, String option) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text('Pilih mau beli berapa ', 
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  children: const [
                    _PriceButton(price: 'Rp.5.000'),
                    _PriceButton(price: 'Rp.10.000'),
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
        borderRadius: BorderRadius.circular(8),
      ),
      child: ElevatedButton(
        onPressed: () {
          _showPhoneNumberDialog(context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Center(
          child: Text(widget.price, style: const TextStyle(fontSize: 16, color: Colors.white)),
        ),
      ),
    );
  }

  void _showPhoneNumberDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PhoneNumberDialog(price: widget.price);
      },
    );
  }
}
