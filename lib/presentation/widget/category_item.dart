import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watan_task1/presentation/styles/color_manager.dart';

class CategoryItem extends StatelessWidget {
  final String text;

  const CategoryItem({
    required this.text,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 70,
      // constraints: BoxConstraints(
      //   minWidth : 60.0,
      // ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: ColorManager.white,
      ),
      child: Text(
        text,
        style: GoogleFonts.rubik(
          fontSize: 13.0,
          color: ColorManager.grey,
        ),
      ),
    );
  }
}
