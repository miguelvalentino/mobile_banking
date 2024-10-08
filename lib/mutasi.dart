import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MutasiPage());
}

class MutasiPage extends StatefulWidget {
  const MutasiPage({super.key});

  @override
  _MutasiPageState createState() => _MutasiPageState();
}

class _MutasiPageState extends State<MutasiPage> {
  String selectedTransactionType = 'Semua';
  DateTime selectedFromDate = DateTime(2024, 9);
  DateTime selectedToDate = DateTime(2024, 12);

  final List<Map<String, dynamic>> dummyMutasi = [
    {
      "date": DateTime(2024, 9, 12),
      "description": "Pembayaran Listrik",
      "amount": "-Rp 200.000"
    },
    {
      "date": DateTime(2024, 9, 11),
      "description": "Gaji",
      "amount": "+Rp 5.000.000"
    },
    {
      "date": DateTime(2024, 9, 10),
      "description": "Pembelian Pulsa",
      "amount": "-Rp 50.000"
    },
    {
      "date": DateTime(2024, 9, 9),
      "description": "Transfer ke Budi",
      "amount": "-Rp 1.000.000"
    },
    {
      "date": DateTime(2024, 9, 8),
      "description": "Transfer dari Andi",
      "amount": "+Rp 2.000.000"
    },
    {
      "date": DateTime(2024, 9, 13),
      "description": "Transfer ke Tono",
      "amount": "-Rp 200.000"
    },
    {
      "date": DateTime(2024, 9, 17),
      "description": "Pembayaran Listrik",
      "amount": "-Rp 400.000"
    },
    {
      "date": DateTime(2024, 10, 2),
      "description": "Donasi",
      "amount": "-Rp 400.000"
    },
  ];

  bool isDateInRange(DateTime date) {
    return date.isAfter(selectedFromDate.subtract(const Duration(days: 1))) &&
           date.isBefore(selectedToDate.add(const Duration(days: 1)));
  }

  void _selectDate(BuildContext context, bool isFromDate) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isFromDate ? selectedFromDate : selectedToDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != (isFromDate ? selectedFromDate : selectedToDate)) {
      setState(() {
        if (isFromDate) {
          selectedFromDate = picked;
        } else {
          selectedToDate = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mutasi Rekening'),
          backgroundColor: const Color.fromARGB(255, 0, 89, 255),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).maybePop(),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          color: const Color(0xFFEFEFEF),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                color: Colors.white,
                child: const Text(
                  'Nomor Rekening: 3420587090',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                color: Colors.white,
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: selectedTransactionType,
                  items: <String>['Semua', 'Uang Masuk', 'Uang Keluar']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedTransactionType = newValue!;
                    });
                  },
                ),
              ),
              const SizedBox(height: 16),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => _selectDate(context, true),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Dari Tanggal: ${DateFormat('dd-MM-yyyy').format(selectedFromDate)}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GestureDetector(
                    onTap: () => _selectDate(context, false),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Sampai Tanggal: ${DateFormat('dd-MM-yyyy').format(selectedToDate)}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: dummyMutasi.length,
                  itemBuilder: (context, index) {
                    final mutasi = dummyMutasi[index];
                    bool isVisible = true;

                    if (selectedTransactionType == 'Uang Masuk' && !mutasi['amount']!.startsWith('+')) {
                      isVisible = false;
                    } else if (selectedTransactionType == 'Uang Keluar' && !mutasi['amount']!.startsWith('-')) {
                      isVisible = false;
                    }

                    if (!isDateInRange(mutasi['date'])) {
                      isVisible = false;
                    }

                    if (isVisible) {
                      return Card(
                        color: Colors.white,
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: ListTile(
                          title: Text(
                            mutasi['description'],
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(DateFormat('dd MMM yyyy').format(mutasi['date'])),
                          trailing: Text(
                            mutasi['amount']!,
                            style: TextStyle(
                              color: mutasi['amount']!.startsWith('+') ? Colors.green : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
