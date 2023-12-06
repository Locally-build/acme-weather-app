import 'package:flutter/material.dart';

class AnimatedImage extends StatefulWidget {
  final String imageUrl;
  final double width;
  final double height;

  AnimatedImage({required this.imageUrl, required this.width, required this.height});

  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Create an animation controller with a duration of 1 second
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    // Create an animation that goes from 0.0 to 1.0
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
        widget.imageUrl,
        width: widget.width,
        height: widget.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
