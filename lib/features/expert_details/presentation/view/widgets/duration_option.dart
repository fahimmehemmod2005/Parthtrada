import 'package:flutter/material.dart';
import 'package:parthtrada/core/constant/app_color.dart';

class DurationOption extends StatelessWidget {
  final int duration;
  final bool isSelected;
  final VoidCallback onTap;

  const DurationOption({
    Key? key,
    required this.duration,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColor.primaryColor
              :  Color(0xFF2a2a2a),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                color: isSelected ? Colors.white : Colors.transparent,
              ),
              child: isSelected
                  ? const Icon(
                Icons.check,
                size: 16,
                color: Color(0xFF2a9d8f),
              )
                  : null,
            ),
            const SizedBox(width: 16),
            Text(
              '$duration min',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}