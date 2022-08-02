import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watan_task1/presentation/styles/assets_manager.dart';
import 'package:watan_task1/presentation/styles/color_manager.dart';

class MotoSecondScreen extends StatelessWidget {
  const MotoSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteDark,
      appBar: AppBar(
        backgroundColor: ColorManager.whiteDark,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0 , vertical: 10.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 65,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(AssetsManager.motoSecondScreenPerson),
                        radius: 30,
                      ),
                      Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: ColorManager.whiteDark,
                              radius: 9,
                            ),
                            CircleAvatar(
                              backgroundColor: ColorManager.red,
                              radius: 8,
                            ),
                            CircleAvatar(
                              backgroundColor: ColorManager.white,
                              radius: 4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Mike!',
                        style: GoogleFonts.rubik(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Welcome back to your account',
                        style: GoogleFonts.rubik(
                          fontSize: 13.0,
                          color: ColorManager.lightGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.more_vert,
                      color: ColorManager.lightGrey,
                      size: 30,
                    ),
                ),
              ],
            ),
            const SizedBox(
              height : 30.0,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.32,
              child: Stack(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: ColorManager.lightBlue2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.23,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: ColorManager.lightBlue,
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.21,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: ColorManager.blue,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'We updated your scooter!',
                                style: GoogleFonts.rubik(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w500,
                                  color: ColorManager.white,
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                'Reach up to 45km of range \n with the new soft.',
                                style: GoogleFonts.rubik(
                                  fontSize: 14.0,
                                  color: ColorManager.whiteDark,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Align(
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Image(
                      image: AssetImage('assets/images/pngfuel.png'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height : 30.0,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: ColorManager.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'TOTAL DISTANCE',
                              style: GoogleFonts.rubik(
                                fontSize: 12.0,
                                color: ColorManager.lightGrey,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '340 km',
                                    style: GoogleFonts.rubik(
                                      fontSize: 18.0,
                                      color: ColorManager.black,
                                    ),
                                  ),
                                ),
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: ColorManager.blue,
                                      radius: 10.0,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: ColorManager.white,
                                      radius: 8.5,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: ColorManager.blue,
                                      radius: 6.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: ColorManager.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Last Ride',
                              style: GoogleFonts.rubik(
                                fontSize: 12.0,
                                color: ColorManager.lightGrey,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '2.3 km',
                                    style: GoogleFonts.rubik(
                                      fontSize: 18.0,
                                      color: ColorManager.black,
                                    ),
                                  ),
                                ),
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: ColorManager.red,
                                      radius: 10.0,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: ColorManager.white,
                                      radius: 8.5,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: ColorManager.red,
                                      radius: 6.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height : 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: ColorManager.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Baterry Left',
                              style: GoogleFonts.rubik(
                                fontSize: 12.0,
                                color: ColorManager.lightGrey,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '74%',
                                    style: GoogleFonts.rubik(
                                      fontSize: 18.0,
                                      color: ColorManager.black,
                                    ),
                                  ),
                                ),
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: ColorManager.orange,
                                      radius: 10.0,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: ColorManager.white,
                                      radius: 8.5,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: ColorManager.orange,
                                      radius: 6.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: ColorManager.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Average Speed',
                              style: GoogleFonts.rubik(
                                fontSize: 12.0,
                                color: ColorManager.lightGrey,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    '22 km/h',
                                    style: GoogleFonts.rubik(
                                      fontSize: 18.0,
                                      color: ColorManager.black,
                                    ),
                                  ),
                                ),
                                Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: ColorManager.gold,
                                      radius: 10.0,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: ColorManager.white,
                                      radius: 8.5,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: ColorManager.gold,
                                      radius: 6.0,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height : 30.0,
            ),
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: ColorManager.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height : 100,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: ColorManager.whiteDark,
                      ),
                      child: Icon(
                        Icons.lock,
                        color: ColorManager.blue,
                        size: 35,
                      ),
                    ),
                    const SizedBox(
                      width : 20.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mike’s Scooter',
                            style: GoogleFonts.rubik(
                              fontSize: 18.0,
                              color: ColorManager.black,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'LOCKED',
                            style: GoogleFonts.rubik(
                              fontSize: 12.0,
                              color: ColorManager.lightGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CupertinoSwitch(
                      activeColor: ColorManager.blue,
                        value: true,
                        onChanged: (value){},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
