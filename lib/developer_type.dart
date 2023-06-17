import 'package:flutter/material.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
class DeveloperType extends StatefulWidget {
  const DeveloperType({Key? key, required this.text, required this.voidCallback, required this.color}) : super(key: key);
  final String text;
  final VoidCallback voidCallback;
  final Color color;

  @override
  State<DeveloperType> createState() => _DeveloperTypeState();
}

class _DeveloperTypeState extends State<DeveloperType> {
  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: widget.voidCallback,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.color
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.text,style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.white,
              ),),
            ),
          ),
        ),
      ),
    );
  }
}
