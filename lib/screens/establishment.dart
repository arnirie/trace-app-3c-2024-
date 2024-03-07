import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class EstablishmentScreen extends StatelessWidget {
  const EstablishmentScreen({super.key});

  void scanQR() async {
    final lineColor = '#ffffff';
    final cancelButtonText = 'CANCEL';
    final isShowFlashIcon = true;
    final scanMode = ScanMode.DEFAULT;
    String result = await FlutterBarcodeScanner.scanBarcode(
        lineColor, cancelButtonText, isShowFlashIcon, scanMode);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Establishment'),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: scanQR,
          child: const Text('Scan'),
        ),
      ),
    );
  }
}
