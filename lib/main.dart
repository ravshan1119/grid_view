import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grid_view/product.dart';
import 'package:grid_view/utils/app_images.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          color: Colors.black,
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: GridViewScreen(),
    );
  }
}

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 334.h,
            ),
            Expanded(
              child: GridView.count(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(4),
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 0.65,
                children: [
                  Product(image: AppImages.image1, text: "Vegan Resto", text2: '12 Mins'),
                  Product(image: AppImages.image2, text: "Healthy Food", text2: '8 Mins'),
                  Product(image: AppImages.image3, text: "Good Food", text2: '12 Mins'),
                  Product(image: AppImages.image4, text: "Smart Resto", text2: '30 Mins'),
                  Product(image: AppImages.image1, text: "Healthy Food", text2: '6 Mins'),
                  Product(image: AppImages.image4, text: "Smart Resto", text2: '15 Mins'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<Product> list  = [
  Product(image: AppImages.image1, text: "Vegan Resto", text2: '12 Mins'),
  Product(image: AppImages.image2, text: "Healthy Food", text2: '8 Mins'),
  Product(image: AppImages.image3, text: "Good Food", text2: '12 Mins'),
  Product(image: AppImages.image4, text: "Smart Resto", text2: '30 Mins'),
  Product(image: AppImages.image1, text: "Healthy Food", text2: '6 Mins'),
  Product(image: AppImages.image4, text: "Smart Resto", text2: '15 Mins'),
];
