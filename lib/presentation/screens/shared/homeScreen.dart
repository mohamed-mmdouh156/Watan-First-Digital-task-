import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watan_task1/presentation/styles/assets_manager.dart';
import 'package:watan_task1/presentation/styles/color_manager.dart';
import 'package:watan_task1/presentation/styles/value_manager.dart';
import 'package:watan_task1/presentation/widget/category_item.dart';
import 'package:watan_task1/presentation/widget/default_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    List<String> categoryList = [
      'Armchair',
      'Sofa',
      'Bed',
      'Light',
    ];

    List<Map> listData = [
      {
        'image' : 'assets/images/one.png',
        'name' : 'Georg Jensen Milimal Chair',
        'price' : '\$ 424.00',
      },
      {
        'image' : AssetsManager.homeScreenChar2,
        'name' : 'Pearly Beading Fox Chair',
        'price' : '\$ 561.00',
      },
      {
        'image' : AssetsManager.homeScreenChar3,
        'name' : 'Florence Arcadia Chair',
        'price' : '\$ 645.21',
      },
      {
        'image' : AssetsManager.homeScreenChar4,
        'name' : 'Atelier Ottoman Takumi Chair',
        'price' : '\$ 928.23',
      },
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: AppSize.s50 , left: AppSize.s20 , right: AppSize.s20),
        child: Column(
          children: [
            DefaultTextField(
                hintText: 'Search Furniture',
                controller: searchController,
                prefixIcon: Icons.search,
              suffixIcon: Icons.cancel_outlined,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              children: [
                Text(
                  'Recently Searched',
                  style: GoogleFonts.rubik(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                TextButton(
                    onPressed: (){},
                    child: Text(
                      'Clear',
                      style: GoogleFonts.rubik(
                        fontSize: 14.0,
                        color: ColorManager.grey,
                      ),
                    ),
                ),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context , index)=> CategoryItem(text: categoryList[index],),
                  separatorBuilder: (context , index)=> const SizedBox(
                    width: 10.0,
                  ),
                  itemCount: categoryList.length,
              ),
            ),
            Expanded(
              child: Container(
                color: ColorManager.whiteDark,
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: GridView.count(
                  physics: const BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 1/1.8,
                  children: List.generate(
                    listData.length , (index) => listItem(listData[index]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listItem(Map model){
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image(
                  image: AssetImage('${model['image']}'),
                  width: double.infinity,
                  height: 200.0,
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.favorite_border,
                      size: 22.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${model['name']}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.rubik(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '${model['price']}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.rubik(
                      color: ColorManager.orange,
                      fontSize: 13.0,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
