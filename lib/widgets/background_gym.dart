import 'package:flutter/material.dart';

class BackgroundGym extends StatelessWidget {
  const BackgroundGym({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ShaderMask(
        shaderCallback: (bounds) => const LinearGradient(
            colors: [Colors.transparent, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.8]).createShader(bounds),
        blendMode: BlendMode.darken,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/gym.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}