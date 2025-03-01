import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../bonds%20list/domain/entities/bond.dart';

class BondListItem extends StatelessWidget {
  final Bond bond;
  final VoidCallback onTap;

  const BondListItem({super.key, required this.bond, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: CachedNetworkImage(
                imageUrl: bond.logo,
                width: 40,
                height: 40,
                placeholder:
                    (context, url) => Container(
                      width: 40,
                      height: 40,
                      color: Colors.grey.shade300,
                    ),
                errorWidget:
                    (context, url, error) => Container(
                      width: 40,
                      height: 40,
                      color: Colors.grey.shade300,
                      child: const Icon(Icons.error, size: 20),
                    ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bond.isin,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        bond.rating,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          ' • ${bond.companyName}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade700,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.lightBlue),
          ],
        ),
      ),
    );
  }
}
