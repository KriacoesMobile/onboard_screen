import 'package:coffee/constant/const.dart';
import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

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
            const SizedBox(height: 50),
            SizedBox(
              height: 250,
              child: ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 241, 227),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 150,
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
                          bottom: 80,
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
                          bottom: 50,
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
                          bottom: 30,
                          left: 10,
                          right: 10,
                          child: SizedBox(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('\$17.80'),
                                Icon(Icons.favorite)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _currentIndex,
        onTap: _handleIndexChanged,
        dotIndicatorColor: Colors.black,
        items: [
          DotNavigationBarItem(
            icon: const Icon(Icons.home),
            selectedColor: Colors.purple,
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.favorite_border),
            selectedColor: Colors.pink,
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.search),
            selectedColor: Colors.orange,
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.person_outline),
            selectedColor: Colors.teal,
          ),
        ],
      ),
    );
  }

  _handleIndexChanged(int value) {
    setState(() => _currentIndex = value);
  }
}
