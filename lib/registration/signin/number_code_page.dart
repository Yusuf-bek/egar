import 'package:egar/sizeconfig/size_config.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:flutter/material.dart';

class NumberCodePage extends StatefulWidget {
  const NumberCodePage({Key? key}) : super(key: key);

  @override
  _NumberCodePageState createState() => _NumberCodePageState();
}

class _NumberCodePageState extends State<NumberCodePage> {
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.deepPurpleAccent),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

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
              "Enter verification code",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            top: getProportionScreenHeight(151),
            left: getProportionScreenWidth(93),
          ),
          Positioned(
            child: const Text(
              "Enter OPT code send",
              style: TextStyle(
                color: Color(0xFFB4B4B4),
                fontSize: 12.0,
              ),
            ),
            top: getProportionScreenHeight(182),
            left: getProportionScreenWidth(123),
          ),
          Positioned(
            child: const Text(
              "to your mobile number",
              style: TextStyle(
                color: Color(0xFFB4B4B4),
                fontSize: 12.0,
              ),
            ),
            top: getProportionScreenHeight(195),
            left: getProportionScreenWidth(120),
          ),
          Positioned(
            child: SizedBox(
              height: getProportionScreenHeight(48),
              width: getProportionScreenWidth(271),
              child: PinPut(
                fieldsCount: 4,
                focusNode: _pinPutFocusNode,
                controller: _pinPutController,
                submittedFieldDecoration: _pinPutDecoration.copyWith(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                selectedFieldDecoration: _pinPutDecoration,
                followingFieldDecoration: _pinPutDecoration.copyWith(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    color: Colors.deepPurpleAccent.withOpacity(.5),
                  ),
                ),
              ),
            ),
            top: getProportionScreenHeight(249),
            left: getProportionScreenWidth(52),
          ),
          Positioned(
            child: const Text(
              "The code didn't come?",
              style: TextStyle(
                color: Color(0xFFB4B4B4),
                fontSize: 12.0,
              ),
            ),
            top: getProportionScreenHeight(308),
            left: getProportionScreenWidth(52),
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFCC00),
                borderRadius: BorderRadius.circular(3),
              ),
              height: getProportionScreenHeight(19),
              width: getProportionScreenWidth(68),
              child: const Center(
                child: Text(
                  "Send again",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
              ),
            ),
            top: getProportionScreenHeight(305),
            left: getProportionScreenWidth(169),
          ),
          Positioned(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/mainpage");
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

  void _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      content: Container(
        height: 80.0,
        child: Center(
          child: Text(
            'Pin Submitted. Value: $pin',
            style: const TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
  }
}
