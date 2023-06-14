import 'package:flutter/material.dart';
class GridViewProduct extends StatefulWidget {
  const GridViewProduct({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  State<GridViewProduct> createState() => _GridViewProductState();
}

class _GridViewProductState extends State<GridViewProduct> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          showDialog(context: context, builder: (context){
            return Dialog(
              child: Container( 
                decoration: BoxDecoration(
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),

                    child: Image.asset(widget.image,fit: BoxFit.cover,)),
              ),
            );
          });
        },
        child: Container(
          height: MediaQuery.of(context).size.width/2-20,
          width: MediaQuery.of(context).size.width/2-20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(widget.image,fit: BoxFit.cover,)),


        ),
      ),
    );
  }
}
