import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:watan_task1/presentation/styles/assets_manager.dart';
import 'package:watan_task1/presentation/styles/color_manager.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List <String> list = [
    'one',
    'two',
    'three'
  ];
  @override
  Widget build(BuildContext context) {
    return DraggableHome(
        title: const Text("Title"),
        headerWidget: const Image(
          image: AssetImage(AssetsManager.motoSecondScreenPerson),
        ),
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: ColorManager.blue,
              width: 1,
            ),
            color: ColorManager.black,
          ),
          child: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              color: ColorManager.white,
            ),
          ),
          ),
        body: [
          Container(),

          ListView.builder(
            padding: const EdgeInsets.only(top: 0),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) => Card(
              child: ListTile(
                title: Text("$index"),
              ),
            ),
          ),
        ]
    );
  }
}
