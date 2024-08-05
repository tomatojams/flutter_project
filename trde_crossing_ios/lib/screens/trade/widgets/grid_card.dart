import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trade_crossing_ios/config/theme.dart';

class GridCard extends StatelessWidget {
  const GridCard({super.key, required this.imageUrl, required this.name});

  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 12.h, 0, 16.h),
      decoration: BoxDecoration(color: AppColor.cardColor, borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 이미지
          Image.network(
            imageUrl,
            height: 80.h,
            width: 80.w,
            fit: BoxFit.contain,
            loadingBuilder: (context, child, loadingProgress) => loadingProgress == null
                ? child
                : Center(
                    child: CircularProgressIndicator.adaptive(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  ),
          ),
          //
          8.verticalSpace,
          // 이름
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: labelMediumTextStyle.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
