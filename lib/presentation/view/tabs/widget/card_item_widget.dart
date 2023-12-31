import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/core/widget/error_img_profile.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({
    super.key,
    required this.userName,
    this.status,
    required this.date,
    required this.time,
    this.img,
    this.textStatus,
    this.statusColor,
    this.textOverflow,
    required this.isIcon,  this.imageBakgColour,
  });
  final String userName;
  final String? status;
  final String date;
  final String time;
  final String? img;
  final String? textStatus;
  final Color? statusColor;
  final Color? imageBakgColour;

  final TextOverflow? textOverflow;
  final bool isIcon;

  @override
  Widget build(BuildContext context) {
    double textSize = img == null
        ? ResponsiveWidget.isMobileLarge(context)
            ? 16
            : 18
        : ResponsiveWidget.isMobileLarge(context)
            ? 14
            : 16;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 4,
          child: Row(
            children: [
              img == null
                  ? SizedBox.shrink()
                  : NetworkImageWidget(
                      onTap: () {},
                      size: 50,
                      img: img ?? "",
                      backgroundColor: imageBakgColour,
                    ).paddingOnly(
                      right: ResponsiveWidget.isMobile(context) ? 4 : 10),
              Expanded(
                child: Text(
                  userName,
                  maxLines: textOverflow == null ? 2 : 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontSize: textSize,
                      fontWeight:
                           FontWeight.w400,
                      color: AppColors.blackColor),
                ),
              ),
            ],
          ),
        ),
        status == null && textStatus == null
            ? SizedBox.shrink()
            : Expanded(
                flex: ResponsiveWidget.isMobile(context) ? 2 : 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    textStatus == null
                        ? Text(
                            status ?? "",
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                    fontSize: textSize,
                                    color: AppColors.blackColor),
                          )
                        : ResponsiveWidget.isMobile(context)
                            ? Icon(
                                statusColor == null
                                    ? CupertinoIcons.xmark_circle
                                    : statusColor == AppColors.amberColor
                                        ? CupertinoIcons.waveform_circle
                                        : CupertinoIcons.check_mark_circled,
                                color: statusColor ?? AppColors.redColour)
                            : Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: statusColor ?? AppColors.redColour,
                                      width: 0.3),
                                  color: statusColor?.withOpacity(0.1) ??
                                      AppColors.redColour.withOpacity(0.1),
                                ),
                                child: Center(
                                  child: Text(
                                    textStatus ?? "",
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                          fontSize: textSize,
                                          fontWeight: FontWeight.w300,
                                          color: statusColor ??
                                              AppColors.redColour,
                                        ),
                                  ),
                                ).paddingSymmetric(vertical: 4, horizontal: 10),
                              ),
                  ],
                ),
              ),
        ResponsiveWidget.isMobile(context)
            ? SizedBox.shrink()
            : Expanded(
                flex: 3,
                child:
                     Text(
                    date,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontSize: textSize,
                        
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackColor),
             ),
              ),
        ResponsiveWidget.isMobile(context)
            ? SizedBox.shrink()
            : Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(time,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                fontSize: textSize,
                                fontWeight:  FontWeight.w400,
                                color: AppColors.blackColor)),
                  ],
                ),
              ),
        isIcon ? SizedBox(width: 50) : SizedBox.shrink()
      ],
    );
  }
}
