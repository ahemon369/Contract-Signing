import 'package:flutter/material.dart';
import '../../core/widgets/custom_background.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/theme/app_theme.dart';
import '../payment_processing/payment_processing_screen.dart';

class UserInformationScreen extends StatelessWidget {
  const UserInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text('Contract Signing\nAgreement Processing',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.2)),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: AppTheme.glassColor,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white.withOpacity(0.2))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('User Information',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const SizedBox(height: 16),
                  const CustomTextField(label: 'Frist Name'),
                  const CustomTextField(label: 'Last Name'),
                  const CustomTextField(label: 'Email Address'),
                  const CustomTextField(label: 'Phone Number'),
                  const CustomTextField(label: 'Current Property Address'),
                  const SizedBox(height: 24),
                  const Text('Existing Agreement Details',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      _buildSelectionChip('Yes', true),
                      const SizedBox(width: 12),
                      _buildSelectionChip('No', false),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const CustomTextField(label: 'Name of Existing Landlord'),
                  const CustomTextField(label: 'Phone Number'),
                  const SizedBox(height: 16),
                  // Payment Fee Box
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text('Processing Fee',
                            style: TextStyle(color: Colors.white70)),
                        Text('₦2,000',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PaymentProcessingScreen())),
                      child: const Text('Next',
                          style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectionChip(String text, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppTheme.primaryColor : Colors.transparent,
        border: isSelected ? null : Border.all(color: Colors.white54),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white)),
    );
  }
}