import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: _Example1(),
          // child: _Example2(),
          // child: _Example3(),
        ),
      ),
    );
  }
}

//================================================================================================//

// ❌ AnimatedSize
class _Example1 extends StatefulWidget {
  const _Example1();

  @override
  State<_Example1> createState() => _Example1State();
}

class _Example1State extends State<_Example1> {
  double _iconSize = 50.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Icon
        // TODO: Wrap with AnimatedSize
        Icon(
          Icons.favorite_outline,
          size: _iconSize,
        ),

        // Button
        _UpdateButton(
          onPressed: () => setState(
            () {
              // TODO: Update size
            },
          ),
        ),
      ],
    );
  }
}

//================================================================================================//

// ✅ TweenAnimationBuilder
class _Example2 extends StatefulWidget {
  const _Example2();

  @override
  State<_Example2> createState() => _Example2State();
}

class _Example2State extends State<_Example2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Icon
        // TODO: Wrap with a TweenAnimationBuilder
        const Icon(
          Icons.favorite_outline,
          size: 50.0,
        ),

        // Button
        _UpdateButton(
          onPressed: () {
            // ???
          },
        ),
      ],
    );
  }
}

//================================================================================================//

// ✅ AnimatedBuilder
class _Example3 extends StatefulWidget {
  const _Example3();

  @override
  State<_Example3> createState() => _Example3State();
}

class _Example3State extends State<_Example3> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // TODO: Assign controller

    // TODO: Assign animation
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Icon
        // TODO: Wrap with AnimatedBuilder
        const Icon(
          Icons.favorite_outline,
          size: 50.0,
        ),

        // Button
        _UpdateButton(
          onPressed: () => setState(
            () {
              // TODO: Call controller methods
            },
          ),
        ),
      ],
    );
  }
}

//================================================================================================//

class _UpdateButton extends StatelessWidget {
  final void Function() onPressed;

  const _UpdateButton({
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: onPressed,
        child: const Text('Update'),
      ),
    );
  }
}
