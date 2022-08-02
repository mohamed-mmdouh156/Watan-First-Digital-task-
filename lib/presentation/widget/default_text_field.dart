
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watan_task1/presentation/styles/color_manager.dart';
import 'package:watan_task1/presentation/styles/value_manager.dart';

class DefaultTextField extends StatefulWidget {
  final String hintText;
  final String labelText;
  IconData? prefixIcon;
  IconData? suffixIcon;
  bool isPass ;
  TextEditingController controller = TextEditingController();

   DefaultTextField({
    required this.hintText,
    required this.controller,
    this.isPass = false,
     this.labelText = "",
     required this.prefixIcon,
     this.suffixIcon,
    Key? key}) : super(key: key);

  @override
  State<DefaultTextField> createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.circular(AppSize.s12),
      ),
      child: TextFormField(
        style: TextStyle(
          fontSize: 14.0,
          color: ColorManager.grey,
        ),
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: GoogleFonts.poppins(
            fontSize: 16.0,
            color: ColorManager.grey,
          ),
          contentPadding: const EdgeInsets.symmetric(
              vertical: AppSize.s18,
              horizontal: AppSize.s12,
          ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          fillColor: Colors.blue,
          prefixIcon: Icon(
              widget.prefixIcon,
            color: ColorManager.grey,
          ),
          suffixIcon: widget.isPass == true? IconButton(
              onPressed: (){
                setState(() {
                  isChecked =! isChecked;
                });
              },
              icon: isChecked == true ? Icon(
                Icons.visibility,
                color: ColorManager.grey,
              ) : Icon(
                Icons.visibility_off,
                color: ColorManager.grey,
              ) ,
          ) : IconButton(
            onPressed: (){},
            icon: widget.suffixIcon != null ? Icon(
              widget.suffixIcon,
              color: ColorManager.grey,
            ) : const SizedBox(
              height: 1,
              width: 1,
            ),
          )
        ),
        controller: widget.controller,
        obscureText: !isChecked,
        validator: (value){
          if(value!.isEmpty){
            return 'this field must not be Empty';
          }
          return null;
        },
      ),
    );
  }
}
