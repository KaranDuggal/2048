import 'package:flutter/material.dart';
import 'mycolor.dart';

class Tile extends StatefulWidget {
  const Tile({super.key, required this.number, required this.width, required this.height, required this.color, required this.size});
  final String number;
  final double width,height;
  final int color;
  final double size;

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
      color: Color(widget.color),
      borderRadius: const BorderRadius.all(Radius.circular(10.0))),
      child: Center(
        child: Text(widget.number,style: TextStyle(fontSize:widget.size,fontWeight: FontWeight.bold,color: Color(MyColor.fontColorTwoFour)),),
      ),
    );
  }
}
