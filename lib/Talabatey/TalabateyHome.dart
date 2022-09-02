import 'package:flutter/material.dart';
import 'package:talabatey_clone/Talabatey/myCategoriesData.dart';
import 'package:talabatey_clone/Talabatey/myInfoData.dart';
import 'package:talabatey_clone/Talabatey/myPopResData.dart';
import 'package:talabatey_clone/Talabatey/myPostsData.dart';

class TalabateyHome extends StatefulWidget {
  @override
  State<TalabateyHome> createState() => _TalabateyHomeState();
}

class _TalabateyHomeState extends State<TalabateyHome> {
  Color myColor = Color(0xFF000000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Icon(
            Icons.search,
            color: Colors.black,
            size: 25,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.notifications_none_rounded,
                color: Colors.black,
                size: 25,
              ),
            )
          ],
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
                size: 25,
              ),
              Text(
                'المنصور',
                style: TextStyle(color: Colors.black, fontSize: 25),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.red,
          currentIndex: 3,
          unselectedLabelStyle:
              const TextStyle(color: Colors.black, fontSize: 16),
          selectedLabelStyle: const TextStyle(color: Colors.red, fontSize: 18),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 27,
                color: Colors.grey,
              ),
              label: 'الحساب',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_long,
                size: 27,
                color: Colors.grey,
              ),
              label: 'الطلبات',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
                size: 27,
                color: Colors.grey,
              ),
              label: 'المحفظة',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 27,
                color: Colors.red,
              ),
              label: 'الرئيسية',
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  height: 145,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: myCategories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return category(
                            myCategories[index]['color'],
                            myCategories[index]['image'],
                            myCategories[index]['name']);
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          'المحلات الأكثر شيوعا',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontFamily: 'Tajawal'),
                        ),
                        Container(
                          color: Colors.red,
                          height: 1,
                          width: 200,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: myPopRes.length,
                      itemBuilder: (BuildContext context, int index) {
                        return popRes(myPopRes[index]['image'],
                            myPopRes[index]['restName']);
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                      itemCount: myInfo.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return info(
                          myInfo[index]['text'],
                          myInfo[index]['icon'],
                        );
                      }),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: myposts.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return posts(
                          myposts[index]['image'],
                          myposts[index]['restName'],
                          myposts[index]['restLoc'],
                          myposts[index]['restRate'],
                        );
                      }),
                ),
              ],
            )),
          ],
        ));
  }

  GestureDetector category(var colorcode, var image, var textOfCategory) {
    return GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(12.5),
              width: 110,
              height: 85,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(colorcode),
                  image: DecorationImage(image: AssetImage(image))),
            ),
            Text(
              textOfCategory,
              style: TextStyle(
                  fontSize: 20,
                  color: myColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal'),
            )
          ],
        ));
  }

  Container info(String text, var icontype) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 30,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 3.0),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Icon(
              icontype,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }

  Container posts(
      String imagePost, String resturantName, String rate, String Location) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(imagePost), fit: BoxFit.cover)),
              ),
              Positioned(
                  right: 32,
                  bottom: 90,
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                        color: Color(0xFFf7ecef),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.delivery_dining_outlined,
                      color: Colors.red,
                      size: 36,
                    ),
                  )),
              Positioned(
                right: 75,
                bottom: 90,
                child: Container(
                    height: 36,
                    decoration: BoxDecoration(
                        color: Color(0xFFf7ecef),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "بروموكود",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'الحد الادنى للتوصيل 5.000 د.ع',
                  style: TextStyle(
                      color: Colors.grey, fontSize: 14, fontFamily: 'Tajawal'),
                ),
                Text(
                  resturantName,
                  style: TextStyle(
                      color: Colors.red, fontSize: 22, fontFamily: 'Tajawal'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'سعر التوصيل : 2500 د.ع',
                style: TextStyle(
                    color: Colors.grey, fontSize: 14, fontFamily: 'Tajawal'),
              ),
              Icon(
                Icons.delivery_dining_outlined,
                color: Colors.grey,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                rate,
                style: TextStyle(
                    color: Colors.grey, fontSize: 14, fontFamily: 'Tajawal'),
              ),
              Icon(
                Icons.emoji_emotions_outlined,
                color: Colors.grey,
              ),
              SizedBox(
                width: 50,
              ),
              Text(
                Location,
                style: TextStyle(
                    color: Colors.grey, fontSize: 14, fontFamily: 'Tajawal'),
              ),
              Icon(
                Icons.location_on_outlined,
                color: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget popRes(String Image, String popResName) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width / 1.5,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image:
                  DecorationImage(image: AssetImage(Image), fit: BoxFit.cover)),
        ),
        Text(
          popResName,
          style: TextStyle(
              fontSize: 25, color: Colors.red, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
