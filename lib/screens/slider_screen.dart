import 'package:flutter/material.dart';
import 'package:ibm_proyecto/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 65;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sliders and checks"),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 50,
              max: 300,
              divisions: 10,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnable
                  ? null
                  : (value) {
                      _sliderValue = value;
                      setState(() {});
                    }),
          //      value: _sliderEnable,
          //      onChanged: (value) {
          //        _sliderEnable = value ?? true;
          //        setState(() {});
          //      }),
          //  Switch(
          //      value: _sliderEnable,
          //      onChanged: (value) => setState(() {
          //            _sliderEnable = value;
          //          })),
          //  Checkbox(
          CheckboxListTile(
              title: Text("Habilitar Slider"),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                    _sliderEnable = value ?? true;
                  })),
          SwitchListTile.adaptive(
              title: Text("Habilitar Slider"),
              activeColor: AppTheme.primary,
              value: _sliderEnable,
              onChanged: (value) => setState(() {
                    _sliderEnable = value;
                  })),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                  fit: BoxFit.contain,
                  width: _sliderValue,
                  image: const NetworkImage(
                      'https://static.wikia.nocookie.net/featteca/images/b/b6/Omni-Man_FT_render.png/revision/latest?cb=20210901154246&path-prefix=es')),
            ),
          )
        ],
      ),
    );
  }
}
