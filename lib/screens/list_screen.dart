import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:water_refill/widgets/text_widget.dart';

class ListScreen extends StatelessWidget {
  ListScreen({Key? key}) : super(key: key);

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 200,
        centerTitle: false,
        backgroundColor: const Color(0xff0B77B5),
        title: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextRegular(
                        text: "Water", fontSize: 40, color: Colors.white),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextRegular(
                        text: "refilling app",
                        fontSize: 40,
                        color: Colors.white),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 55),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextRegular(
                        text: "List of Orders",
                        fontSize: 25,
                        color: Colors.white),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  minWidth: 370,
                  height: 140,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextRegular(
                          text: box.read('firstName') +
                              (' ') +
                              box.read('lastName'),
                          fontSize: 35,
                          color: Colors.black),
                      TextRegular(
                          text: ('Mobile: ') + box.read('mobileNum'),
                          fontSize: 15,
                          color: Colors.black),
                      TextRegular(
                          text: ('Address: ') + box.read('myAddress'),
                          fontSize: 15,
                          color: Colors.black),
                      TextRegular(
                          text:
                              ('Number of Gallons: ') + box.read('numGallons'),
                          fontSize: 15,
                          color: Colors.black),
                    ],
                  ),
                  color: const Color(0xffA0D6F4),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
