import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart ' as badges;
import 'package:grocery_store/widgets/categoriesWidget.dart';
import 'package:grocery_store/widgets/itemsWidget.dart';
import 'package:grocery_store/widgets/populrItemsWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00A368),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(right: 20, left: 15, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0XFF00A368),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.5), blurRadius: 2)
                      ],
                    ),
                    child: badges.Badge(
                      badgeContent: const Text(
                        '3',
                        style: TextStyle(color: Colors.white),
                      ),
                      badgeStyle: const badges.BadgeStyle(
                          badgeColor: Colors.red,
                          padding: EdgeInsets.all(7),
                          shape: badges.BadgeShape.circle),
                      child: InkWell(
                        onTap: () {
                          // showSlidingBottomSheet(
                          //   context,
                          //   builder: (context) {
                          //     return SlidingSheetDialog(
                          //       elevation: 8,
                          //       cornerRadius: 16,
                          //       color: Colors.amberAccent,
                          // color: ScrollSpec.overscroll ??
                          //     Theme.of(context).accentColor,
                          //       builder: (context, state) {
                          //         return const BottomCartSheet();
                          //       },
                          //     );
                          //   },
                          // );
                        },
                        child: const Icon(
                          CupertinoIcons.cart,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    "What do you want to Buy?",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 250,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Search here...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.filter_list)
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategorieWidget(),
                  PopularItemsWidget(),
                  Itemswidget()
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
