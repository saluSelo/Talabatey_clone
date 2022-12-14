import 'package:flutter/material.dart';
import 'package:talabatey_clone/Talabatey/TalabateyHome.dart';

class orderInfo extends StatefulWidget {
  const orderInfo({Key? key}) : super(key: key);

  @override
  State<orderInfo> createState() => _orderInfoState();
}

class _orderInfoState extends State<orderInfo> {
  int count = 1;
  int foodPrice = 6500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SafeArea(
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'images/zinger.jpg',
                            ))),
                  ),
                  Positioned(
                      right: 20,
                      top: 20,
                      child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18)),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => TalabateyHome()));
                            },
                            child: Center(
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                          ))),
                  Positioned(
                      top: 155,
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, right: 20, left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '????????????',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Tajawal',
                                    color: Colors.red),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '?????? ??????',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Tajawal',
                                          color: Colors.black),
                                    ),
                                    Icon(
                                      Icons.emoji_emotions_outlined,
                                      color: Colors.black.withOpacity(0.6),
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      '?????? ?????????????? : 1500 ??.??',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Tajawal',
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.delivery_dining_outlined,
                                      color: Colors.black.withOpacity(0.6),
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        '???????? ???????????? ?????????? : 5000 ??.??',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Tajawal',
                                            color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 18.0),
                                      child: Icon(
                                        Icons.monetization_on_outlined,
                                        color: Colors.black.withOpacity(0.6),
                                        size: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 18.0),
                                      child: Text(
                                        '??????????????_14 ??????????',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Tajawal',
                                            color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 18.0),
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.black.withOpacity(0.6),
                                        size: 20,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                        child: Text(
                                      '?????? ?????????????? ?????????????? ???? ?????? ???????? ?????? ????????',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Tajawal',
                                          color: Colors.black),
                                    )),
                                    Icon(
                                      Icons.access_time_rounded,
                                      color: Colors.black.withOpacity(0.6),
                                      size: 20,
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                '?????????????? ?????????? ????????',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Tajawal',
                                    color: Colors.red),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 20, bottom: 18),
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Color(0xfff3f3f3),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.keyboard_arrow_up_sharp,
                                      color: Colors.black,
                                      size: 40,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text('????????????',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Tajawal',
                                                  color: Colors.red)),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Text('??????????????',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Tajawal',
                                                  color: Colors.black))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                "?????????????? ????????",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Tajawal',
                                    color: Colors.black),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 15),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Color(0xfff3f3f3),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                        child: Text(
                                      '?????? ???????? ???????? ???? ?????????????? ?????? ?????????? ???????? ?????????????? ??????',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.grey),
                                    ))
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (count == 0) {
                                          count = 0;
                                        } else
                                          (count = count - 1);
                                      });
                                    },
                                    child: Container(
                                      width: 66,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xfff3f3f3)),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 15.0),
                                          child: Icon(
                                            Icons.minimize,
                                            color: Colors.black,
                                            size: 25,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: 90,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: Color(0xfff3f3f3)),
                                      child: Center(
                                        child: Text(
                                          "$count",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      )),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        count = count + 1;
                                      });
                                    },
                                    child: Container(
                                      width: 66,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xfff3f3f3)),
                                      child: Center(
                                        child: Icon(
                                          Icons.plus_one,
                                          color: Colors.black,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("??.??",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Tajawal',
                                          color: Colors.red)),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text("${foodPrice * count}",
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Tajawal',
                                          color: Colors.red)),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 30),
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: count == 0
                                        ? Color(0xffcbcbcb)
                                        : Colors.red),
                                child: Center(
                                    child: Text(
                                  '?????????? ?????? ??????????',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: count == 0
                                          ? Color(0xff5c5c5c)
                                          : Colors.white),
                                )),
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
