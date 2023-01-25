import 'package:components_app/themes/theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider and checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              activeColor: AppTheme.primaryColor,
              divisions: 10,
              min: 10,
              max: 400,
              value: _sliderValue,
              onChanged: (value) {
                _sliderValue = value;
                setState(() {});
              },
            ),
            Image(
              image: const NetworkImage(
                  'https://i.pinimg.com/originals/73/0f/d7/730fd784cdb7ec663bed196ca0d52a8c.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
