import 'package:flutter/material.dart';

class BackgroundImageForRegistration extends StatelessWidget {
  const BackgroundImageForRegistration({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Colors.black, Colors.black12],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/registration.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
