import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trace_app_3c/screens/home.dart';

class ClientScreen extends StatelessWidget {
  ClientScreen({super.key, required this.userId});

  final String userId;

  void signout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => signout(context),
            icon: FaIcon(
              FontAwesomeIcons.arrowRightFromBracket,
            ),
          ),
        ],
      ),
      body: Center(
        child: QrImageView(
          data: userId,
          version: QrVersions.auto,
          // size: 300.0,
        ),
      ),
    );
  }
}
