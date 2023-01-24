import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigoAccent;
  BorderRadiusGeometry _borderRaius = BorderRadius.circular(20);

  void hanldeChangeSahpe() {
    //nextInt porque NextDouble va de 0 a 1, en Nextint defines hasta que número ir, pero se debe sumar al final ya que puede dar un 0
    final random = Random();
    _width = random.nextInt(500).toDouble() + 50;
    _height = random.nextInt(500).toDouble() + 50;
    _color = Color.fromRGBO(
        Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), 1);
    _borderRaius = BorderRadius.circular(random.nextInt(100).toDouble() + 1);
    print(random.nextInt(100).toDouble() + 1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animated'),
        ),
        body: Center(
          child: AnimatedContainer(
            curve: Curves.easeInOutCubic,
            duration: const Duration(milliseconds: 400),
            // color: Colors.red,
            width: _width,
            height: _height,
            decoration:
                BoxDecoration(color: _color, borderRadius: _borderRaius),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: hanldeChangeSahpe,
          child: const Icon(
            Icons.play_arrow,
            size: 40.0,
          ),
        ));
  }
}
