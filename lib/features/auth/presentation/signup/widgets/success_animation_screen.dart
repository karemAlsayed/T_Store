import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessAnimationScreen extends StatefulWidget {
  final String title;
  final String message;
  final String animationPath;
  final VoidCallback onComplete;

  const SuccessAnimationScreen({
    super.key,
    required this.title,
    required this.message,
    required this.animationPath,
    required this.onComplete,
  });

  @override
  _SuccessAnimationScreenState createState() => _SuccessAnimationScreenState();
}

class _SuccessAnimationScreenState extends State<SuccessAnimationScreen> {
  bool _isButtonVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset(
            widget.animationPath,
            repeat: false,
            onLoaded: (composition) {
              // Wait for the animation to finish before showing the button
              Future.delayed(composition.duration, () {
                setState(() {
                  _isButtonVisible = true;
                });
              });
            },
          ),
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: SizedBox(
              width: 200,
              child: Text(
                widget.message,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: AnimatedOpacity(
        opacity: _isButtonVisible ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: widget.onComplete,
            child: const Text('Start Shopping'),
          ),
        ),
      ),
    );
  }
}
