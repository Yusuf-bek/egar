import 'package:egar/sizeconfig/size_config.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
//  String numberRegxpPattern = "^(?:[+998]9)?[0-9]{12}$";
  SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            top: getProportionScreenHeight(60),
            left: getProportionScreenWidth(18),
          ),
          Positioned(
            child: const Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            top: getProportionScreenHeight(123),
            left: getProportionScreenWidth(103),
          ),
          Positioned(
            child: SizedBox(
              width: getProportionScreenWidth(335),
              height: getProportionScreenHeight(54),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: "Phone number",
                  hintStyle: const TextStyle(
                    color: Color(0xFFB4B4B4),
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
            top: getProportionScreenHeight(217),
            left: getProportionScreenWidth(21),
          ),
          Positioned(
            child: const Text(
              "We will send sms to your phone number.",
              style: TextStyle(
                color: Color(0xFFB4B4B4),
                fontSize: 10.0,
              ),
            ),
            top: getProportionScreenHeight(283),
            left: getProportionScreenWidth(20),
          ),
          Positioned(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/numbercode");
              },
              child: Container(
                height: getProportionScreenHeight(54),
                width: getProportionScreenWidth(335),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: const Center(
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            bottom: getProportionScreenHeight(35),
            right: getProportionScreenWidth(20),
          ),
        ],
      ),
    );
  }
}
