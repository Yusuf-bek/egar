import 'package:egar/sizeconfig/size_config.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
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
                  "Create account",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                top: getProportionScreenHeight(130),
                left: getProportionScreenWidth(102),
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
                      hintText: "Full name",
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
                top: getProportionScreenHeight(278),
                left: getProportionScreenWidth(20),
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
                        "Create account",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                top: getProportionScreenHeight(357),
                right: getProportionScreenWidth(20),
              ),
              Positioned(
                child: const Text(
                  "_______________________",
                  style: TextStyle(
                    color: Color(0xFFB4B4B4),
                  ),
                ),
                bottom: getProportionScreenHeight(213),
                left: getProportionScreenWidth(20),
              ),
              Positioned(
                child: const Text(
                  "or",
                  style: TextStyle(
                    color: Color(0xFFB4B4B4),
                  ),
                ),
                bottom: getProportionScreenHeight(209),
                right: getProportionScreenWidth(181),
              ),
              Positioned(
                child: const Text(
                  "_______________________",
                  style: TextStyle(
                    color: Color(0xFFB4B4B4),
                  ),
                ),
                bottom: getProportionScreenHeight(213),
                right: getProportionScreenWidth(20),
              ),
              Positioned(
                child: InkWell(
                  child: Container(
                    height: getProportionScreenHeight(54),
                    width: getProportionScreenWidth(335),
                    decoration: BoxDecoration(
                      color: const Color(0xFF3B5999),
                      borderRadius: BorderRadius.circular(8),
                      // border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: SizedBox(
                            width: getProportionScreenWidth(25),
                            height: getProportionScreenHeight(25),
                            child: const Image(
                              image:
                                  AssetImage("assets/signupicons/facebook.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          top: getProportionScreenHeight(14),
                          right: getProportionScreenWidth(222),
                        ),
                        Positioned(
                          child: const Text(
                            "Sign up with facebook",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          top: getProportionScreenHeight(18),
                          right: getProportionScreenWidth(68),
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: getProportionScreenHeight(123),
                right: getProportionScreenWidth(20),
              ),
              Positioned(
                child: InkWell(
                  child: Container(
                    height: getProportionScreenHeight(54),
                    width: getProportionScreenWidth(335),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(width: 1, color: Colors.black),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: SizedBox(
                            width: getProportionScreenWidth(25),
                            height: getProportionScreenHeight(25),
                            child: const Image(
                              image:
                                  AssetImage("assets/signupicons/google.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          top: getProportionScreenHeight(14),
                          right: getProportionScreenWidth(222),
                        ),
                        Positioned(
                          child: const Text(
                            "Sign up with facebook",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          top: getProportionScreenHeight(18),
                          right: getProportionScreenWidth(68),
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: getProportionScreenHeight(49),
                right: getProportionScreenWidth(20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
