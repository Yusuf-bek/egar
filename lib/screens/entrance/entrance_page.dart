import 'package:egar/sizeconfig/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EntrancePage extends StatelessWidget {
  const EntrancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: Stack(
        children: [
          Positioned(
            child: SvgPicture.asset(
              "assets/svg/entrance.svg",
              height: getProportionScreenHeight(100),
              width: getProportionScreenWidth(282),
            ),
            top: getProportionScreenHeight(268),
            left: getProportionScreenWidth(49),
          ),
          Positioned(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/signin");
              },
              child: Container(
                height: getProportionScreenHeight(54),
                width: getProportionScreenWidth(335),
                decoration: BoxDecoration(
                    color: const Color(0xFF272727),
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Text(
                    "Sig in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            bottom: getProportionScreenHeight(101),
            right: getProportionScreenWidth(20),
          ),
          Positioned(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/signup");
              },
              child: Container(
                height: getProportionScreenHeight(54),
                width: getProportionScreenWidth(335),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: const Center(
                  child: Text(
                    "Sig up",
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
