import 'package:components_app/themes/theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider and checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            activeColor: AppTheme.primaryColor,
            divisions: 10,
            min: 10,
            max: 400,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          // Checkbox(
          //   value: _sliderEnabled,
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   },
          // ),
          CheckboxListTile(
            activeColor: AppTheme.primaryColor,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) {
              setState(() {
                _sliderEnabled = value ?? true;
              });
            },
          ),
          // Switch(
          //   value: _sliderEnabled,
          //   onChanged: (value) {
          //     setState(() {
          //       _sliderEnabled = value;
          //     });
          //   },
          // ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primaryColor,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled,
            onChanged: (value) {
              setState(() {
                _sliderEnabled = value;
              });
            },
          ),
          AboutListTile(), 
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://w0.peakpx.com/wallpaper/955/867/HD-wallpaper-thirteen-scissor-7-anime-scissor-scissor-seven-thirteen.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
