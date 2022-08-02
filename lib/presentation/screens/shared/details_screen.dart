import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watan_task1/presentation/styles/assets_manager.dart';
import 'package:watan_task1/presentation/styles/color_manager.dart';
import 'package:watan_task1/presentation/widget/defualtButton.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: ColorManager.white,
                            ),
                            child: Icon(
                              Icons.arrow_back_sharp,
                              color: ColorManager.black,
                            ),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: ColorManager.white,
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              color: ColorManager.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Image(
                        image: AssetImage(AssetsManager.detailsScreenChar),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Ox Mathis Furniture Modern Style',
                            style: GoogleFonts.rubik(
                              fontSize: 24.0,
                              color: ColorManager.black,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                            '\$90.99',
                          style: GoogleFonts.rubik(
                            fontSize: 24,
                            color: ColorManager.orange,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person_outline,
                                      color: ColorManager.grey,
                                      size: 26,
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      '341 Seen',
                                      style: GoogleFonts.rubik(
                                        fontSize: 14,
                                        color: ColorManager.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.favorite_border,
                                      color: ColorManager.grey,
                                      size: 26,
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      '294 Liked',
                                      style: GoogleFonts.rubik(
                                        fontSize: 14,
                                        color: ColorManager.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            RatingBar.builder(
                              initialRating: 4.5,
                              itemSize: 30,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 10,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 150,
                          height: 60,
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              CircleAvatar(
                                backgroundColor: ColorManager.white,
                                radius: 22,
                              ),
                              const CircleAvatar(
                                backgroundImage: AssetImage(AssetsManager.motoSecondScreenPerson),
                                radius: 20,
                              ),
                              Align(
                                alignment: AlignmentDirectional.centerEnd,
                                child: SizedBox(
                                  width: 100,
                                  child: Stack(
                                    alignment: AlignmentDirectional.center,
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: ColorManager.white,
                                        radius: 22,
                                      ),
                                      const CircleAvatar(
                                        backgroundImage: AssetImage(AssetsManager.motoSecondScreenPerson),
                                        radius: 20,
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional.centerEnd,
                                        child: Stack(
                                          alignment: AlignmentDirectional.center,
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: ColorManager.white,
                                              radius: 22,
                                            ),
                                            CircleAvatar(
                                              backgroundColor: ColorManager.teal,
                                              radius: 20,
                                              child: Text(
                                                '+24',
                                                style: GoogleFonts.rubik(
                                                  fontSize: 14,
                                                  color: ColorManager.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Description',
                          style: GoogleFonts.rubik(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'The Swedish Designer Monica Forstar’s Style Is Characterised By Her Enternal Love For New Materials And Beautiful Pure Shapes.',
                          style: GoogleFonts.rubik(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: ColorManager.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
                color: ColorManager.white,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap : (){},
                          child: CircleAvatar(
                            backgroundColor: ColorManager.whiteDark,
                            radius: 18,
                            child: Text(
                              '-',
                              style: TextStyle(
                                fontSize: 30,
                                color: ColorManager.black,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '04',
                            style: GoogleFonts.rubik(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap : (){},
                          child: CircleAvatar(
                            backgroundColor: ColorManager.teal,
                            radius: 18,
                            child: Text(
                                '+',
                              style: TextStyle(
                                fontSize: 30,
                                color: ColorManager.white,
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          'Total : ',
                          style: GoogleFonts.rubik(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: ColorManager.black,
                          ),
                        ),
                        Text(
                          '\$90.900',
                          style: GoogleFonts.rubik(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: ColorManager.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    DefaultButton(
                        buttonText: 'Add to Card',
                        onPressed: (){},
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
