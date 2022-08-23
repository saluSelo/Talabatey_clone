import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';

class TalabateyHome extends StatefulWidget {
  @override
  State<TalabateyHome> createState() => _TalabateyHomeState();
}

class _TalabateyHomeState extends State<TalabateyHome> {
  Color myColor = Color(0xFF000000);

  final List<String> listImages = [
    'images/shawarma.jpg',
    'images/pizza.jpg',
    'images/burger.jpg',
    'images/pasta.jpg',
    'images/Kabab.jpg',
  ];

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
                size: 30,
                color: Colors.grey,
              ),
              label: 'الحساب',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_long,
                size: 30,
                color: Colors.grey,
              ),
              label: 'الطلبات',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
                size: 30,
                color: Colors.grey,
              ),
              label: 'المحفظة',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
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
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          category(
                              0xFFF44336, 'images/talabatey.png', 'المطاعم'),
                          category(
                              0xFFEEEEEE, 'images/shopping_cart.png', 'ماركت'),
                          category(0xFFFFEB3B, 'images/diet.png', 'دايت فود'),
                          category(0xFF86e3ce, 'images/sweet.png', 'حلويات'),
                          category(
                              0xFF763b3f, 'images/coffee.png', 'البن و القهوة'),
                          category(
                              0xFFb90018, 'images/breakfast.png', 'فطور صباحي'),
                          category(0xFF86e3ce, 'images/pastries.png', 'معجنات'),
                          category(
                              0xFFFf2a392, 'images/seafood.png', 'البحرية'),
                          category(0xFFFc75250, 'images/food.png',
                              'التجهيزات الغذائية'),
                        ],
                      )
                    ],
                  ),
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
                CarouselImages(
                  scaleFactor: 1,
                  listImages: listImages,
                  height: 130.0,
                  borderRadius: 30.0,
                  cachedNetworkImage: true,
                  verticalAlignment: Alignment.bottomCenter,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      info("الكل", Icons.home),
                      info("خصومات", Icons.percent),
                      info('يدعم المحفظة',
                          Icons.account_balance_wallet_outlined),
                      info('توصيل طلباتي', Icons.delivery_dining_outlined),
                      info('توصيل مجاني', Icons.card_giftcard_outlined),
                      info('حصري', Icons.star_border_outlined)
                    ],
                  ),
                ),
                posts('images/burger.jpg', 'بديز بركر', 'ممتاز', 'اليرموك'),
                posts('images/Lavinto.jpg', 'Lavinto', "ممتاز", "الكرادة"),
                posts("images/Casper's.jpg", "Casper's & Gambini", "متوسط",
                    "زيونة"),
                posts("images/shmesani.jpg", "شميساني", "جيد جدا", "المنصور"),
                posts('images/fern.jpg', 'the fern', "جيد جدا", "اليرموك"),
                posts("images/Hardee's.jpg", "Hardee's", 'ممتاز', 'الحارثية'),
                posts('images/Firefly_Burger.jpg', 'Firefly Burger', "ممتاز",
                    "الاعظمية"),
                posts('images/shawarma2.jpg', 'الدمشقي', "جيد جدا", 'الكرادة')
              ],
            )),
          ],
        ));
  }

  GestureDetector category(var colorcode, String image, String textOfCategory) {
    return GestureDetector(
        onTap: () {
          setState(() {
            myColor = Colors.red;
          });
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
}
