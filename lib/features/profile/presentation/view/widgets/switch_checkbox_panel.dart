import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../app/themes/app_text_styles.dart';
import '../../../../../core/constant/app_color.dart';

enum PanelControlType { none, switchButton, checkbox }

class SwitchCheckboxPanel extends StatelessWidget {
  final String text;
  final PanelControlType controlType;
  final bool value;
  final ValueChanged<bool?>? checkboxOnChanged;
  final ValueChanged<bool?>? switchOnChanged;

  const SwitchCheckboxPanel({
    super.key,
    required this.text,
    this.controlType = PanelControlType.none,
    this.value = false,
    this.checkboxOnChanged,
    this.switchOnChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.containerColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppTextStyles.title16_700w(color: Colors.white),
            ),
            const Spacer(),

            if (controlType == PanelControlType.switchButton)
              Switch(
                value: value,
                onChanged: switchOnChanged,
                activeTrackColor: AppColor.primaryColor,
              ),

            if (controlType == PanelControlType.checkbox)
              Checkbox(
                value: value,
                onChanged: checkboxOnChanged,
                shape: const CircleBorder(),
                activeColor: AppColor.primaryColor,
              ),
          ],
        ),
      ),
    );
  }
}
