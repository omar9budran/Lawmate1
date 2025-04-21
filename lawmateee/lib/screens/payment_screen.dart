import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'card_details_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Methods'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Handle adding new payment method
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildPaymentMethodCard(
              context,
              'Visa',
              'assets/visa_logo.png',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardDetailsScreen(paymentMethod: 'Visa'),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildPaymentMethodCard(
              context,
              'MasterCard',
              'assets/mastercard_logo.png',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardDetailsScreen(paymentMethod: 'MasterCard'),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildPaymentMethodCard(
              context,
              'American Express',
              'assets/amex_logo.png',
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardDetailsScreen(paymentMethod: 'American Express'),
                  ),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildPaymentMethodCard(
              context,
              'PayPal',
              'assets/paypal_logo.png',
              () {
                // Handle PayPal selection
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethodCard(BuildContext context, String name, String logoPath, VoidCallback onTap) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset(
                logoPath,
                width: 40,
                height: 40,
              ),
              const SizedBox(width: 16),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.chevron_right,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}