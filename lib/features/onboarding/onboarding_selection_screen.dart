import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';

class OnboardingSelectionScreen extends StatelessWidget {
  const OnboardingSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Contract Signing\nwith JHomes', textAlign: TextAlign.center, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87, height: 1.2)),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity, height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('JHomes Listing Onboarding', style: TextStyle(fontSize: 16)),
                ),
              ),
              const SizedBox(height: 16),
              _buildOutlineButton('New Rental Onboarding'),
              const SizedBox(height: 16),
              _buildOutlineButton('Existing Rental Onboarding'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOutlineButton(String text) {
    return SizedBox(
      width: double.infinity, height: 55,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Colors.grey.shade300),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: () {},
        child: Text(text, style: const TextStyle(color: Colors.black87, fontSize: 16)),
      ),
    );
  }
}