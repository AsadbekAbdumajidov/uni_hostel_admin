import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';

class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget(
      {super.key,
      this.img = "",
      required this.size,
      this.onTap,
      this.backgroundColor,
      this.lineColour});
  final String? img;
  final double size;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? lineColour;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: img == ""
            ? ErrorImageProfile(
                backgroundColor: backgroundColor,
                lineColour: lineColour,
                size: size)
            : Image.network(
                img ?? "",
                width: size,
                height: size,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}

class ErrorImageProfile extends StatelessWidget {
  const ErrorImageProfile(
      {super.key,
      required this.backgroundColor,
      required this.lineColour,
      required this.size});
  final Color? backgroundColor;
  final Color? lineColour;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            color: lineColour ?? AppColors.primaryColor.withOpacity(.5),
            borderRadius: BorderRadius.circular(30)),
        child: Container(
          padding: const EdgeInsets.all(1),
          margin: const EdgeInsets.all(1),
          child: CircleAvatar(
              backgroundColor: backgroundColor ?? AppColors.whiteColor,
              child: Icon(Icons.person_outline,
                  color: lineColour ?? AppColors.blackColor)),
        ),
      ),
    );
  }
}
