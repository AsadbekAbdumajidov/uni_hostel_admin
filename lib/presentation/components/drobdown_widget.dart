import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/widget_extensions.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/presentation/components/responsiveness.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget(
      {super.key,
      required this.index,
      required this.list,
      required this.onChanged});
  final String index;
  final List<String> list;
  final Function(dynamic v) onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        
        items: list
            .map((String item) => DropdownMenuItem<String>(
              
                  value: item,
                  child:  Center(
                      child: Text(
                        item,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                                color: item == index
                                    ? AppColors.whiteColor
                                    : AppColors.blackColor),
                        overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ))
            .toList(),
        selectedItemBuilder: (context) {
          return List.generate(
            list.length,
            (index) {
              return Center(
                child: Text(
                  list[index],
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: AppColors.whiteColor,
                      fontSize: ResponsiveWidget.isTablet(context) ? 14 : 16),
                  overflow: TextOverflow.ellipsis,
                ),
              );
            },
          );
        },
        value: index,
        onChanged: onChanged,
        buttonStyleData: ButtonStyleData(
          
          padding: EdgeInsets.all(0),
          height: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppColors.primaryColor),
          elevation: 2,
        ),
        iconStyleData: IconStyleData(
          icon:  Icon(CupertinoIcons.chevron_down, size:ResponsiveWidget.isMobileLarge(context)
              ? 12
              : 20)
                  .paddingOnly(right: 8),
          iconEnabledColor: AppColors.whiteColor,
        ),
        dropdownStyleData: DropdownStyleData(
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColors.whiteColor,
          ),
          elevation: 1,
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(5),
            thickness: MaterialStateProperty.all(6),
            thumbVisibility: MaterialStateProperty.all(true),
          ),
        ),
        style: Theme.of(context)
            .textTheme
            .displaySmall
            ?.copyWith(color: AppColors.whiteColor),
        menuItemStyleData: MenuItemStyleData(
          height: 35,
            selectedMenuItemBuilder: (context, child) {
              return Container(
                height: 35,
                color: AppColors.primaryColor,
                child: child,
              );
            },
            overlayColor: MaterialStateProperty.all(
                AppColors.primaryColor.withOpacity(0.3))),
      ),
    );
  }
}
