import 'package:flutter/material.dart';
import 'package:wiztechbd_task/Const/Colors/colors.dart';
import 'package:wiztechbd_task/Const/Styles/font_styles.dart';
import 'package:wiztechbd_task/Const/images/images.dart';
import '../Const/Colors/app_color.dart';
import '../Widget/my_drawer.dart';
import '../custom_class/payment.dart';
import '../custom_class/purchase.dart';
import '../custom_class/return.dart';

class TableDataScreen extends StatelessWidget {
  const TableDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey();

    Purchase purchase = Purchase();
    Payment payment = Payment();
    ReturnClass returnClass = ReturnClass();

    return Scaffold(
      drawer: MyDrawer(),
      key: _scaffoldkey,
      appBar: AppBar(
        backgroundColor: AppColor.gDarkcolor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              _scaffoldkey.currentState!.openDrawer();
            },
            icon: Image.asset(icMenu,scale: 2,)),
        title: const Text(
          "Table Data",
          style:TextStyle(fontFamily: interSemibold,color: kTitleColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          purchase.getPurchase(),
          payment.getPayment(),
          returnClass.getReturn(),

          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 68),
            child: Container(
              height: 48,
              decoration: BoxDecoration(
                color: AppColor.gDarkcolor,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.add_circle_outlined, color: Colors.white,),
                  SizedBox(width: 5,),
                  Text("Pay the balance",style:TextStyle(fontFamily: poppinSemibold,color: kTitleColor),)
                ],
              )
            ),
          )
        ]),
      ),
    );
  }
}
