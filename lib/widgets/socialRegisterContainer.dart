import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialRegisterContainer extends StatelessWidget {
  const SocialRegisterContainer({
    Key? key,
    required this.text,
    required this.logoAssetName,
    required this.func,
  }) : super(key: key);
  final String text;
  final String logoAssetName;
  final Function func;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 3))
          ],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 25,
              height: 25,
              child: SvgPicture.asset(logoAssetName),
            ),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      onTap: () {
        func();
      },
    );
  }
}
