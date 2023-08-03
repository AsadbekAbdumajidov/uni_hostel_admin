import 'package:cached_network_image/cached_network_image.dart';
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
        child:ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: CachedNetworkImage(
                    imageUrl: img ?? "",
                    width: size,
                    height: size,
                    fit: BoxFit.cover,
                    errorWidget: (context, url, error) => ErrorImageProfile(
                      backgroundColor: backgroundColor,
                      lineColour: lineColour,
                      errorIcon: Icons.person_outline,
                    ),
                  )),
      ),
    );
  }
}

class ErrorImageProfile extends StatelessWidget {
  const ErrorImageProfile(
      {super.key,
      required this.backgroundColor,
      required this.lineColour,
      this.errorIcon});
  final Color? backgroundColor;
  final Color? lineColour;
  final IconData? errorIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
            color: lineColour ?? AppColors.primaryColor.withOpacity(.5),
            borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(1),
          margin: const EdgeInsets.all(1),
          child: CircleAvatar(
              backgroundColor: backgroundColor ?? AppColors.whiteColor,
              child: Icon(errorIcon ?? Icons.person_outline,
                  color: lineColour ?? AppColors.blackColor)),
        ),
      ),
    );
  }
}

