import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parthtrada/app/themes/app_text_styles.dart';
import 'package:parthtrada/app/widgets/buttons/primary_button.dart';
import 'package:parthtrada/core/constant/app_color.dart';
import '../../../../../app/widgets/containertext/container_text.dart';

class FilterDesign extends StatefulWidget {
  const FilterDesign({
    super.key,
  });

  @override
  State<FilterDesign> createState() => _FilterDesignState();
}

class _FilterDesignState extends State<FilterDesign> {
  // Track selected skills
  Map<String, bool> selectedSkills = {
    'Machine Learning': false,
    'System Design': false,
    'Cloud Architecture': false,
    'Data Science': false,
    'Frontend Development': false,
    'Backend Development': false,
  };

  // Reset all selections
  void resetFilters() {
    setState(() {
      selectedSkills.updateAll((key, value) => false);
    });
  }

  // Get selected skills
  List<String> getSelectedSkills() {
    return selectedSkills.entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Top bar
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Filter",
              style: AppTextStyles.title24_800w(color: Colors.white),
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        ),

        SizedBox(height: 24.h),

        // Skills section title
        Text(
          'Skills',
          style: AppTextStyles.title20_800w(color: Colors.white),
        ),

        SizedBox(height: 16.h),

        // Use Wrap to prevent overflow
        Wrap(
          spacing: 10.w,
          runSpacing: 10.h,
          children: selectedSkills.keys.map((skill) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedSkills[skill] = !selectedSkills[skill]!;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                decoration: BoxDecoration(
                  color: selectedSkills[skill]!
                      ? AppColor.primaryColor
                      : Color(0xFF2a2a2a),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: selectedSkills[skill]!
                        ? Color(0xFF2a9d8f)
                        : Color(0xFF3a3a3a),
                    width: 1,
                  ),
                ),
                child: Text(
                  skill,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: selectedSkills[skill]!
                        ? FontWeight.w600
                        : FontWeight.w400,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}