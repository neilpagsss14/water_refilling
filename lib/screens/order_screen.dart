import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:water_refill/screens/list_screen.dart';
import 'package:water_refill/screens/station_screen.dart';
import 'package:water_refill/widgets/text_widget.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({Key? key}) : super(key: key);
  late String gallons;
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffA0D6F4),
        leading: IconButton(
          onPressed: (() {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => StationScreen()));
          }),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: const Color(0xff0B77B5),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 75, left: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextRegular(
                        text: box.read('stationName'),
                        fontSize: 55,
                        color: Colors.white),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextRegular(
                        text: ('Address: ') + box.read('stationAddress'),
                        fontSize: 18,
                        color: Colors.white),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 28, right: 28),
                child: TextFormField(
                  onChanged: (String input) {
                    gallons = input;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      filled: true,
                      prefixIcon: const Icon(Icons.add_box),
                      fillColor: Colors.white,
                      label: const Text(
                        'Number of Gallons',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 185),
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.white,
                    minWidth: 150,
                    height: 55,
                    onPressed: () {
                      box.write('numGallons', gallons);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ListScreen()));
                    },
                    child: TextRegular(
                        text: 'Place Order',
                        fontSize: 25,
                        color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
