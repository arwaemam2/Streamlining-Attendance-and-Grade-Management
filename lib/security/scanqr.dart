import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'dart:developer';

class ScanScreen extends StatefulWidget {
  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  var qrstr = "let's Scan it";
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('Scanning QR code'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                qrstr,
                style: TextStyle(color: Colors.deepPurple, fontSize: 30),
              ),
              ElevatedButton(
                onPressed: scanQr,
                child: Text(
                  ('Scanner'),
                ),
              ),
              SizedBox(
                height: width,
              )
            ],
          ),
        ));
  }

  Future<void> scanQr() async {
    try {
      final qrResult = await FlutterBarcodeScanner.scanBarcode(
        '#2A99CF',
        'cancel',
        true,
        ScanMode.QR,
      );
      if (!mounted) return;
      setState(() {
        qrstr = qrResult;
      });
    } catch (e) {
      log(e.toString());
      setState(() {
        qrstr = 'unable to read this';
      });
    }
  }
}