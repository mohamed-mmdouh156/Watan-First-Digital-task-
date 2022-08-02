
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watan_task1/presentation/styles/color_manager.dart';
import 'package:watan_task1/presentation/styles/value_manager.dart';

class DefaultButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  const DefaultButton({
    required this.buttonText,
    required this.onPressed,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width : double.infinity,
      height: AppSize.s50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s12),
        color: ColorManager.teal,
      ),
      child: MaterialButton(
        onPressed: (){
          onPressed();
        },
        child: Text(
          buttonText,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: ColorManager.white,
          ),
        ),
      ),
    );
  }
}
