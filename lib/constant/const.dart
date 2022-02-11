import 'package:coffee/screens/first_screen.dart';
import 'package:coffee/screens/screen.dart';
import 'package:coffee/screens/second_screen.dart';
import 'package:flutter/material.dart';

const String url = 'asset/svg/coffee.svg';
const String url1 = 'asset/svg/first.svg';
const String url2 = 'asset/svg/second.svg';
const String title = 'It`s\ntime for a coffee';
const String subtitle =
    'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain flowering plants in the Coffea genus. From the coffee fruit, the seeds are separated to produce a stable, raw product: unroasted green coffee.';
//
Size size(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return size;
}

const List<Widget> screens = [Screen(), FirstScreen(), SecondScreen()];
const List<String> tabtitle = ['All', 'Coffee', 'New products'];
const onboardcolor = Color.fromARGB(255, 141, 99, 84);
const backgroundcolor = Color.fromARGB(255, 250, 222, 196);
