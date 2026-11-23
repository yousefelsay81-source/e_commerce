import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';

class CustomSize extends StatelessWidget {
  final int? selectedSize;
  final Function(int) onSizeChanged;
  CustomSize({super.key, required this.selectedSize, required this.onSizeChanged});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      children: List<Widget>.generate(5, (int index)
      {
        return ChoiceChip(
          label: Text('${index + 6} UK'),
          selected: selectedSize == index + 6,
          onSelected: (selected) {
              onSizeChanged(index + 6);
          },
          backgroundColor: AppColors.whiteColor,
          selectedColor: AppColors.forgetPasswordColor,
          labelStyle: TextStyle(
            color: selectedSize == index + 6 ? AppColors.whiteColor : AppColors.forgetPasswordColor
          ),
        );
      }).toList(),
    );
  }
}
