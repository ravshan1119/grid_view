import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grid_view/utils/app_colors.dart';
import 'package:grid_view/utils/app_images.dart';
class Product extends StatelessWidget {
  const Product({Key? key, required this.image, required this.text, required this.text2}) : super(key: key);
  final String image;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.C_4E4E4E
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Image.asset(image),
          ),
          Spacer(),
          SizedBox(height: 15.h,),
          Text(text,style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
            color: AppColors.C_ffffff
          ),),
          SizedBox(height: 15.h,),
          Text(text2,style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13.sp,
              color: AppColors.C_ffffff
          ),),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
