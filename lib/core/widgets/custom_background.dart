import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;
  final bool showAppBar;

  const CustomBackground({
    super.key,
    required this.child,
    this.showAppBar = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Gradient Placeholder (Replace with Blurred Image)
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF8E9EAB), Color(0xFF3B4A54)],
              ),
            ),
          ),
          if (showAppBar)
            Positioned(
              top: 40,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text('JH',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  const Icon(Icons.menu, color: Colors.white),
                ],
              ),
            ),
          SafeArea(child: child),
        ],
      ),
    );
  }
}