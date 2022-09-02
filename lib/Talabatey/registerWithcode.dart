import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'TalabateyHome.dart';

class registerWithcode extends StatefulWidget {
  const registerWithcode({Key? key}) : super(key: key);

  @override
  State<registerWithcode> createState() => _registerWithcodeState();
}

class _registerWithcodeState extends State<registerWithcode> {
  TextEditingController name = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController code = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 40.0, bottom: 50, left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'images/talabatey2.png',
                  width: MediaQuery.of(context).size.width / 2,
                ),
              ),
              SizedBox(
                height: 37,
              ),
              textinput('الاسم', '${name.text.length}/15', name, 15),
              SizedBox(
                height: 35,
              ),
              textinput('رقم الهاتف', '${phonenumber.text.length}/11',
                  phonenumber, 11),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Hero(
                      tag: 'page',
                      child: Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      'إذا كان لديك رمز مشاركة, إضغط هنا',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.red,
                          fontFamily: 'Tajawal'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              textinput('رمز المشاركة', '', code, null),
              SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        primary: Color(0xfff6323e)),
                    onPressed: (() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TalabateyHome()));
                    }),
                    child: Text(
                      'التالي',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ]),
    );
  }

  Stack textinput(
      String hintinput, String numOfChars, var controllerLabel, var length) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          color: Color(0xfff3f3f3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
            controller: controllerLabel,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Tajawal',
                  color: Color(0xffbfbfbf)),
              hintText: hintinput,
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(20),
            ),
            textAlign: TextAlign.end,
            inputFormatters: [
              LengthLimitingTextInputFormatter(length),
            ]),
      ),
      Positioned(
          bottom: 15,
          left: 20,
          child: Text(
            numOfChars,
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.red),
          )),
    ]);
  }
}
