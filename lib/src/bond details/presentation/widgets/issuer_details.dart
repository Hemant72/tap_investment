import 'package:flutter/material.dart';
import 'package:tap_investment/src/bond%20details/domain/entities/bond_detail.dart';

class IssuerDetailsSection extends StatelessWidget {
  final IssuerDetails issuerDetails;

  const IssuerDetailsSection({super.key, required this.issuerDetails});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Card(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  const Icon(Icons.business, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    'Issuer Details',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey.shade300),
            const SizedBox(height: 10),
            _buildDetailRow('Issuer Name', issuerDetails.issuerName),
            _buildDetailRow('Type of Issuer', issuerDetails.typeOfIssuer),
            _buildDetailRow('Sector', issuerDetails.sector),
            _buildDetailRow('Industry', issuerDetails.industry),
            _buildDetailRow('Issuer Nature', issuerDetails.issuerNature),
            _buildDetailRow(
              'Corporate Identity Number (CIN)',
              issuerDetails.cin,
            ),
            _buildDetailRow(
              'Name of the Lead Manager',
              issuerDetails.leadManager,
            ),
            _buildDetailRow('Registrar', issuerDetails.registrar),
            _buildDetailRow(
              'Name of Debenture Trustee',
              issuerDetails.debentureTrustee,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, bottom: 12.0, right: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Colors.blue.shade700,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
