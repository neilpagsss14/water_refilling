import 'package:flutter/material.dart';
import 'package:water_refill/screens/login_screen.dart';
import 'package:water_refill/widgets/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B77B5),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 150, top: 250),
                child: TextRegular(
                    text: "Water", fontSize: 75, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: TextRegular(
                    text: "Refilling App", fontSize: 55, color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300),
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.white,
                    minWidth: 200,
                    height: 55,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: TextRegular(
                        text: 'Sign-up', fontSize: 25, color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextRegular(
                    text: 'Sign-up as supplier',
                    fontSize: 18,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
