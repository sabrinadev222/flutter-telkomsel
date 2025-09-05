import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String selectedMethod = 'LinkAjaMyTelkomsel';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Metode Pembayaran',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Kartu info paket
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.shade100,
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Combo OMG! 6.5 GB",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const Text(
                    "4.5 GB Internet + 2 GB OMG! + 60 SMS Tsel + 100 Mins Voice Tsel",
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const [
                      Icon(Icons.hourglass_bottom, color: Colors.red, size: 16),
                      SizedBox(width: 6),
                      Text("Masa aktif 30 hari",
                          style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              "Pembayaran di MyTelkomsel",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            // Pulsa
            RadioListTile(
              value: "Pulsa",
              groupValue: selectedMethod,
              onChanged: (val) => setState(() => selectedMethod = val!),
              contentPadding: EdgeInsets.zero,
              title: Row(
                children: [
                  Image.asset("assets/images/pulsa.png", width: 24, height: 24),
                  const SizedBox(width: 10),
                  const Text("Pulsa"),
                ],
              ),
              subtitle: const Text("Rp12.000"),
            ),

            // LinkAja MyTelkomsel
            RadioListTile(
              value: "LinkAjaMyTelkomsel",
              groupValue: selectedMethod,
              onChanged: (val) => setState(() => selectedMethod = val!),
              contentPadding: EdgeInsets.zero,
              title: Row(
                children: [
                  Image.asset("assets/images/linkaja.png",
                      width: 24, height: 24),
                  const SizedBox(width: 10),
                  const Text("LinkAja"),
                ],
              ),
              subtitle: const Text("Rp76.200"),
            ),

            const Divider(height: 32),

            const Text(
              "E-Wallet",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            // GoPay
            RadioListTile(
              value: "Gopay",
              groupValue: selectedMethod,
              onChanged: (val) => setState(() => selectedMethod = val!),
              contentPadding: EdgeInsets.zero,
              title: Row(
                children: [
                  Image.asset("assets/images/gopay.png", width: 24, height: 24),
                  const SizedBox(width: 10),
                  const Text("GoPay"),
                ],
              ),
            ),

            // OVO
            RadioListTile(
              value: "OVO",
              groupValue: selectedMethod,
              onChanged: (val) => setState(() => selectedMethod = val!),
              contentPadding: EdgeInsets.zero,
              title: Row(
                children: [
                  Image.asset("assets/images/ovo.png", width: 24, height: 24),
                  const SizedBox(width: 10),
                  const Text("OVO"),
                ],
              ),
            ),

            // LinkAja E-Wallet
            RadioListTile(
              value: "LinkAjaEwallet",
              groupValue: selectedMethod,
              onChanged: (val) => setState(() => selectedMethod = val!),
              contentPadding: EdgeInsets.zero,
              title: Row(
                children: [
                  Image.asset("assets/images/linkaja.png",
                      width: 24, height: 24),
                  const SizedBox(width: 10),
                  const Text("LinkAja"),
                ],
              ),
            ),

            const Spacer(),

            // Total & Tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Total Pembayaran", style: TextStyle(fontSize: 16)),
                Text(
                  "Rp61.000",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.red),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // bayar
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: const Text(
                  "KONFIRMASI & BAYAR",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
