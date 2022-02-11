import 'package:coffee/constant/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      appBar: PreferredSize(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: const Icon(Icons.menu),
              title: const CircleAvatar(
                  backgroundImage: AssetImage('asset/img/musk.jpg')),
              leadingWidth: 40,
              actions: const [Icon(Icons.search, size: 30)],
              iconTheme:
                  Theme.of(context).iconTheme.copyWith(color: onboardcolor),
            ),
          ],
        ),
        preferredSize: const Size.fromHeight(50),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Hi,',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: onboardcolor),
                ),
                Text(
                  ' Sneijder',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: onboardcolor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            DefaultTabController(
              length: 4,
              child: TabBar(
                indicator: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 241, 227),
                  borderRadius: BorderRadius.circular(30),
                ),
                tabs: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Tab(text: 'All'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Tab(text: 'Coffee'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Tab(text: 'New products'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Tab(icon: Icon(Icons.manage_accounts_sharp)),
                  )
                ],
                isScrollable: true,
                labelColor: onboardcolor,
                labelStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 241, 227),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
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
                      Positioned(
                        bottom: -20,
                        child: FloatingActionButton(
                            heroTag: '$index',
                            mini: true,
                            onPressed: () {},
                            child: const Icon(Icons.add)),
                      ),
                      const Positioned(
                        top: 65,
                        left: 10,
                        child: Text(
                          'Coffee Beans',
                          style: TextStyle(
                            color: onboardcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 80,
                        left: 10,
                        child: Text(
                          'Price',
                          style: TextStyle(
                            color: onboardcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 95,
                        child: SizedBox(
                            width: 100,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('\$17.80'),
                                  Icon(Icons.favorite)
                                ])),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
