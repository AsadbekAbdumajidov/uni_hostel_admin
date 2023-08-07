import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class StepStatusWidget extends StatelessWidget {
  const StepStatusWidget(
      {super.key, required this.img, required this.title, this.onTap, this.buttonTitle});
  final String img;
  final String title;
  final String? buttonTitle;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            SvgPicture.asset(img, height: 300,fit: BoxFit.contain),
            SizedBox(height: 25),
            Text(title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontSize: ResponsiveWidget.isTablet(context) ? 16 : 20)),
            SizedBox(height: 30),
            onTap == null
                ? SizedBox.shrink()
                : CustomButton(
                    width: 400,
                    text: buttonTitle ?? "",
                    onTap: onTap ?? () {})
          ],
        ),
      ),
    );
  }
}
