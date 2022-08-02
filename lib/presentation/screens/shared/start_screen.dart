import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watan_task1/presentation/styles/assets_manager.dart';
import 'package:watan_task1/presentation/styles/color_manager.dart';
import 'package:watan_task1/presentation/styles/value_manager.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.orange,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 10.0),
            child: Column(
              children: [
                const Spacer(),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: IconButton(
                      onPressed: (){},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: ColorManager.white,
                      ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(300)),
              color: ColorManager.blue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: const [
                    Image(
                        image: AssetImage(AssetsManager.startScreenDarkBackground),
                    ),
                    Image(
                      image: AssetImage(AssetsManager.startScreenScooterImage),
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Text(
                        'Your scooter in one app',
                        style: GoogleFonts.rubik(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: ColorManager.white,
                        ),
                      ),
                      const SizedBox(
                        height: AppSize.s22,
                      ),
                      Text(
                        'Everything that you need to know about your scooter is now here. \n All the information in one app',
                        style: GoogleFonts.rubik(
                          fontSize: 15.0,
                          color: ColorManager.whiteDark,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
