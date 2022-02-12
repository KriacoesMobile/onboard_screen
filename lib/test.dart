import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 150,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
             // padding: EdgeInsets.all(10),
              color: Color.fromARGB(255, 187, 140, 0),
              width: 100,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -20,
                    child: SvgPicture.asset(
                      'asset/svg/svg5.svg',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
