import 'package:flutter/material.dart';
import '../../core/widgets/custom_background.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/theme/app_theme.dart';
import '../payment_fee/payment_fee_screen.dart';

class ContractInformationScreen extends StatelessWidget {
  const ContractInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text('Contract Information\nWith JHomes 🏡',
                textAlign: TextAlign.center,
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
                  const Text('JHomes Tenancy\nMonthly Rent Agreement',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const Divider(color: Colors.white54, height: 30),
                  _buildDropdown('01. Definitions'),
                  _buildDropdown('02. Authority of JHomes'),
                  _buildDropdown('03. Rent Payment & Financial Te'),
                  _buildDropdown('04. Payment Methods'),
                  _buildDropdown('05. Tenant Obligations'),
                  _buildDropdown('06. Landlord Rights and Respon'),
                  _buildDropdown('07. Tenant\'s Right to Terminate'),
                  _buildDropdown('08. Dispute Resolution'),
                  _buildDropdown('09. Miscellaneous Provisions'),
                  _buildDropdown('10. Acknowledgement'),
                  const SizedBox(height: 20),
                  const CustomTextField(label: 'Property Address'),
                  const CustomTextField(label: 'Tenant Name'),
                  const CustomTextField(label: 'Landlord Name'),
                  const CustomTextField(label: 'Address'),
                  const CustomTextField(label: 'Tenant Signature'),
                  const CustomTextField(label: 'Landlord Signature'),
                  const CustomTextField(label: 'Tenant\'s date of signature'),
                  const CustomTextField(label: 'Landlord\'s date of signature'),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaymentFeeScreen())),
                      child: const Text('Sign Contract',
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

  Widget _buildDropdown(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: const TextStyle(color: Colors.white, fontSize: 14)),
          const Icon(Icons.keyboard_arrow_down, color: Colors.white),
        ],
      ),
    );
  }
}