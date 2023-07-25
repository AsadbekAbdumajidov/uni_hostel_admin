import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uni_hostel_admin/core/constants/constants.dart';
import 'package:uni_hostel_admin/core/routes/app_routes.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/themes/app_icons.dart';
import 'package:uni_hostel_admin/core/themes/app_text.dart';
import 'package:uni_hostel_admin/core/utils/utils.dart';
import 'package:uni_hostel_admin/core/utils/validator.dart';
import 'package:uni_hostel_admin/core/widget/custom_button.dart';
import 'package:uni_hostel_admin/core/widget/custom_text_field.dart';
import 'package:uni_hostel_admin/di.dart';
import 'package:uni_hostel_admin/presentation/components/flush_bars.dart';
import 'package:uni_hostel_admin/presentation/cubit/login/login_cubit.dart';

class LoginPage extends StatelessWidget {
  final formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<LoginCubit>(),
      child: BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
        if (state.status == Status.SUCCESS) {
          Navigator.pushNamedAndRemoveUntil(
              context, RouteName.requests.route, (route) => false);
        }
        if (state.status == Status.ERROR) {
          showErrorMessage(context, state.failure.getLocalizedMessage(context));
        }
      }, builder: (context, state) {
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
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(fontSize: 30),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppStrings.strUserName,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(color: AppColors.bodyTextColor)),
                          SizedBox(height: 10),
                          CustomTextField(
                            onChange: (v) =>
                                context.read<LoginCubit>().getUserName(v),
                            hintText: AppStrings.strEnterUserName,
                            validator: (dynamic v) => Validator.fieldChecker(
                                value: v,
                                message: AppStrings.strValidateUserName),
                          ),
                          SizedBox(height: 30),
                          Text(AppStrings.strPassword,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(color: AppColors.bodyTextColor)),
                          SizedBox(height: 10),
                          CustomTextField(
                            obscure: state.changeEye,
                            onChange: (v) =>
                                context.read<LoginCubit>().getPassword(v),
                            hintText: AppStrings.strEnterPassword,
                            suffixIcon: GestureDetector(
                                onTap: () =>
                                    context.read<LoginCubit>().changeEye(),
                                child: const Icon(Icons.remove_red_eye)),
                            validator: (dynamic v) => Validator.fieldChecker(
                                value: v,
                                message: AppStrings.strValidatePassword),
                          ),
                          SizedBox(height: 30),
                          CustomButton(
                              text: AppStrings.strAcces,
                              onTap: () {
                                if (formGlobalKey.currentState!.validate()) {
                                  context.read<LoginCubit>().login();
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
      }),
    );
  }
}
