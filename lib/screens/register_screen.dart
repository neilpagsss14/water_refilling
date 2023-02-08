import 'package:flutter/material.dart';
import 'package:water_refill/screens/station_screen.dart';
import 'package:water_refill/widgets/text_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late String station_name;
  late String station_add;

  TimeOfDay _timeOfDay = const TimeOfDay(hour: 00, minute: 00);
  TimeOfDay _timeOfDay2 = const TimeOfDay(hour: 00, minute: 00);

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  void showTimePicker2() {
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((value) {
      setState(() {
        _timeOfDay2 = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B77B5),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 190, top: 100),
                child: TextRegular(
                    text: "Water", fontSize: 75, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 90),
                child: TextRegular(
                    text: "Refilling App", fontSize: 55, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 28, right: 28),
                child: TextFormField(
                  onChanged: (String input) {
                    station_name = input;
                  },
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.add_location_rounded),
                      filled: true,
                      fillColor: Colors.white,
                      label: const Text(
                        'Station Name',
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
                padding: const EdgeInsets.only(left: 28, right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: TextRegular(
                                text: 'Business Hours',
                                fontSize: 17,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: MaterialButton(
                              onPressed: _showTimePicker,
                              child: Text(
                                _timeOfDay.format(context).toString(),
                                style: const TextStyle(fontSize: 24),
                              ),
                              minWidth: 150,
                              height: 50,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextBold(
                          text: 'TO', fontSize: 20, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          MaterialButton(
                            onPressed: showTimePicker2,
                            child: Text(
                              _timeOfDay2.format(context).toString(),
                              style: const TextStyle(fontSize: 24),
                            ),
                            minWidth: 150,
                            height: 50,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 28, right: 28),
                child: TextFormField(
                  onChanged: (String input) {
                    station_add = input;
                  },
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.location_city),
                      filled: true,
                      fillColor: Colors.white,
                      label: const Text(
                        'Station Address',
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
