import 'package:flutter/material.dart';
import 'package:uni_hostel_admin/core/themes/app_colors.dart';
import 'package:uni_hostel_admin/presentation/components/loading_widget.dart';

class InfiniteScrollingPagination extends StatelessWidget {
  final Function() onPagination;
  final Widget child;
  final bool isLoading;

  const InfiniteScrollingPagination({
    Key? key,
    required this.onPagination,
    required this.child,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          if (!isLoading &&
              scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent &&
              scrollInfo is UserScrollNotification) {
            // if(scrollInfo.direction == ScrollDirection.reverse)
            onPagination();
            return false;
          }
          return false;
        },
        child: Stack(
          children: [
            child,
            isLoading
                ? Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: AppColors.transparent,
                      height: 50.0,
                      alignment: Alignment.center,
                      child: LoadingWidget(),
                    ))
                : const SizedBox.shrink()
          ],
        ));
  }
}
