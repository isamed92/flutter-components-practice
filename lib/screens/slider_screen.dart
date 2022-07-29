import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _checkValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider and checks')),
      body: Column(
        children: [
          Slider(
            activeColor: AppTheme.primary,
            // divisions: 10,
            value: _sliderValue,
            min: 20,
            max: 500,
            onChanged: _checkValue
                ? (value) {
                    _sliderValue = value;

                    setState(() {});
                  }
                : null,
          ),
          // Checkbox(
          //     value: _checkValue,
          //     onChanged: (value) {
          //       _checkValue = value ?? true;
          //       setState(() {});
          //     }),
          // Switch(
          //     value: _checkValue,
          //     onChanged: (value) {
          //       _checkValue = value;
          //       setState(() {});
          //     }),
          CheckboxListTile(
              value: _checkValue,
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              onChanged: (value) {
                _checkValue = value ?? true;
                setState(() {});
              }),
          SwitchListTile.adaptive(
              value: _checkValue,
              title: const Text('Habilitar Slider'),
              activeColor: AppTheme.primary,
              onChanged: (value) {
                _checkValue = value;
                setState(() {});
              }),

          AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                fit: BoxFit.contain,
                width: _sliderValue,
                image: const NetworkImage(
                    'https://w7.pngwing.com/pngs/854/811/png-transparent-hisoka-hunter-%C3%97-hunter-gon-freecss-anime-character-hisoka-purple-manga-cartoon-thumbnail.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
