import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uni_hostel_admin/core/constants/constants.dart';
import 'package:uni_hostel_admin/core/routes/app_routes.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_icons.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/validator.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/core/widget/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  final formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Form(
          key: formGlobalKey,
          child: Center(
            child: Container(
              constraints:
                  const BoxConstraints(maxWidth: 440, maxHeight: maxHeight),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.iconLogo),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Text(
                      AppStrings.strAdmin,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 30),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStrings.strGmail,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(color: AppColors.bodyTextColor)),
                      SizedBox(height: 10),
                      CustomTextField(
                        onChange: (v) {},
                        hintText: AppStrings.strEnterGmail,
                        validator: (dynamic v) => Validator.fieldChecker(
                            value: v, message: AppStrings.strValidateGmail),
                      ),
                      SizedBox(height: 30),
                      Text(AppStrings.strPassword,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(color: AppColors.bodyTextColor)),
                      SizedBox(height: 10),
                      CustomTextField(
                        obscure: false,
                        
                        onChange: (v) {},
                        hintText: AppStrings.strEnterPassword,
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.remove_red_eye)
                        ),
                        validator: (dynamic v) => Validator.fieldChecker(
                            value: v, message: AppStrings.strValidatePassword),
                      ),
                      SizedBox(height: 30),
                      CustomButton(
                          text: AppStrings.strAcces,
                          onTap: () {
                            if (formGlobalKey.currentState!.validate()) {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  RouteName.requests.route, (route) => false);
                            }
                          })
                    ],
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
