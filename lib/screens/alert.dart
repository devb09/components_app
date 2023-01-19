import 'dart:io';

import 'package:components_app/themes/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: ((context) {
          return CupertinoAlertDialog(
            title: const Text('Tile'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Alert content'),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child:
                    const Text('Cancelar', style: TextStyle(color: Colors.red)),
              ),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok')),
            ],
          );
        }));
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: ((context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 5,
            title: const Text('Tile'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Alert content'),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancelar')),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok'))
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //     backgroundColor: Colors.indigo,
              //     shape: const StadiumBorder(),
              //     elevation: 2),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                child: Text(
                  'Show alert',
                  style: TextStyle(fontSize: 20),
                ),
              ))),
      floatingActionButton: FloatingActionButton(
          // backgroundColor: AppTheme.primaryColor,
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
