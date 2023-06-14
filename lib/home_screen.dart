import 'package:flutter/material.dart';
import 'package:grid_view/grid_view_products.dart';
import 'package:grid_view/utils/app_images.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  bool crossAxisCount=true;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("HomeScreen",style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.white
        ),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,right: 16,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: (){
                      setState(() {
                        widget.crossAxisCount=!widget.crossAxisCount;
                      });
                    },
                    child: Icon(Icons.add_box_outlined))
              ],
            ),
          ),
          Expanded(
            child: GridView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(10),
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: widget.crossAxisCount?2:1,childAspectRatio: 1.5),
              children: [
                GridViewProduct(image: AppImages.image1),
                GridViewProduct(image: AppImages.image2),
                GridViewProduct(image: AppImages.image3),
                GridViewProduct(image: AppImages.image4),
                GridViewProduct(image: AppImages.image5),
                GridViewProduct(image: AppImages.image6),
                GridViewProduct(image: AppImages.image7),
                GridViewProduct(image: AppImages.image8),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
