import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
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
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const StationScreen()));
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
                padding: const EdgeInsets.only(top: 45, right: 40),
                child: TextRegular(
                    text: 'Gundam Refilling',
                    fontSize: 45,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: TextRegular(
                    text: 'Station', fontSize: 45, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, right: 265),
                child: Text(box.read('myAddress'),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    )),
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const StationScreen()));
                    },
                    child: TextRegular(
                        text: 'Done', fontSize: 25, color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
