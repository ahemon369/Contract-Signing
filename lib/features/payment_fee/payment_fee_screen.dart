import 'package:flutter/material.dart';
import '../user_info/user_information_screen.dart';

class PaymentFeeScreen extends StatelessWidget {
  const PaymentFeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Spacer(),
              const Text('Payment Fee\nwith JHomes',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      height: 1.2)),
              const SizedBox(height: 40),
              _buildFeeCard('1-month Rental amount Fee'),
              _buildFeeCard('2-months security deposit Fee'),
              _buildFeeCard('10% of monthly rent Agreement Fee'),
              _buildFeeCard('Onboarding ₦2,000 Processing Fee'),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 120,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const UserInformationScreen())),
                    child:
                        const Text('Next', style: TextStyle(fontSize: 16)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeeCard(String text) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10)),
      child: Text(text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 14, color: Colors.black87)),
    );
  }
}