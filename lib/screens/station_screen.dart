import 'package:flutter/material.dart';
import 'package:water_refill/screens/order_screen.dart';
import 'package:water_refill/widgets/text_widget.dart';

class StationScreen extends StatelessWidget {
  const StationScreen({Key? key}) : super(key: key);

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
              TextRegular(
                  text: 'Water Refilling App',
                  fontSize: 35,
                  color: Colors.white),
              Padding(
                padding: const EdgeInsets.only(top: 50, right: 120),
                child: TextRegular(
                    text: 'Refilling Stations',
                    fontSize: 20,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  minWidth: 370,
                  height: 140,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OrderScreen()));
                  },
                  child: TextRegular(
                      text: 'Text Here', fontSize: 25, color: Colors.black),
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
