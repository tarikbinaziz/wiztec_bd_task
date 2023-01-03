import 'package:flutter/material.dart';
import 'package:wiztechbd_task/Const/Strings/strings.dart';
import '../Const/Colors/app_color.dart';
import '../Const/Colors/colors.dart';
import '../Const/Styles/font_styles.dart';

class MyDrawer extends StatefulWidget {
   const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool _customTileExpanded1 = false;
  bool _customTileExpanded2 = false;
  bool _customTileExpanded3 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: 329,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 110,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: kMainColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
                Positioned(
                    right: 10,
                    child: Container(
                      height: 115,
                      width: 147,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            const Color(0xffC9ECE3).withOpacity(0.07),
                            const Color(0xff10AB83).withOpacity(0.64),
                          ]),
                          color: AppColor.gDarkcolor,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(80),
                              bottomRight: Radius.circular(20))),
                    )),
                Positioned(
                    right: 5,
                    child: Container(
                      height: 110,
                      width: 90,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            const Color(0xffC9ECE3).withOpacity(0.15),
                            const Color(0xff10AB83).withOpacity(0.15),
                          ]),
                          color: AppColor.gDarkcolor,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(90),
                              bottomRight: Radius.circular(20))),
                    )),
                const Positioned(
                    left: 15,
                    bottom: 16.16,
                    child: Text(demoLimitedCompany,
                        style:TextStyle(fontFamily: poppinSemibold,color: kTitleColor,fontSize: 18)
                    )),

                Positioned(
                    child: IconButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, icon: const Icon(Icons.close, color: Colors.white,)),
                ),
              ],
            ),
            const SizedBox(height: 13,),
            ExpansionTile(
             expandedCrossAxisAlignment: CrossAxisAlignment.start,
                collapsedBackgroundColor: const Color(0xffC9ECE3),
                backgroundColor:Colors.white ,
                collapsedIconColor: AppColor.gDarkcolor,
                collapsedTextColor: kMainColor,
              iconColor: AppColor.gDarkcolor,
              textColor: kMainColor,
                title: Text("Purchase", style:TextStyle(fontFamily: poppinSemibold,
                    color:_customTileExpanded1?kMainColor: kSubTittleColor),),
              leading: const Icon(Icons.shopping_cart),
              trailing: Icon(
                _customTileExpanded1
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
              ),
              onExpansionChanged: (bool expanded) {
                setState(() => _customTileExpanded1 = expanded,
                );
              },
              children: const [
                Text("Purchase List",style:TextStyle(fontFamily: poppinSemibold,color: kMainColor
                ), ),
                Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 12),
                  child: Text("Order List", style:TextStyle(fontFamily: poppinSemibold,color: kMainColor)),
                ),
                Text("VAT List", style:TextStyle(fontFamily: poppinSemibold,color: kMainColor)),
                Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 12),
                  child: Text("Product Unit",style:TextStyle(fontFamily: poppinSemibold,color: kMainColor)),
                ),
                Text("Purchase Report", style:TextStyle(fontFamily: poppinSemibold,color: kMainColor)),
                SizedBox(height: 12,)
              ],
            ),
            ExpansionTile(
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              iconColor: AppColor.gDarkcolor,
              textColor: AppColor.gDarkcolor,

              title: const Text("Sell", style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor),),
              leading: const Icon(Icons.shopping_bag),
              trailing: Icon(
                _customTileExpanded2
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
              ),
              onExpansionChanged: (bool expanded) {
                setState(() => _customTileExpanded2 = expanded);
              },
            ),
            ExpansionTile(
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              iconColor: AppColor.gDarkcolor,
              textColor: AppColor.gDarkcolor,

              title: const Text("Stock / Inventory",style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor),),
              leading: const Icon(Icons.store_sharp),
              trailing: Icon(
                _customTileExpanded3
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
              ),
              onExpansionChanged: (bool expanded) {
                setState(() => _customTileExpanded3 = expanded);
              },

            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  DrawerItem({
    this.title,
    this.onTap,
    Key? key,
  }) : super(key: key);

  String? title;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$title",
              style: myStyle(18, Colors.black, FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

myStyle(double fz, Color clr, [FontWeight? fw]) {
  return TextStyle(fontSize: fz, color: clr, fontWeight: fw);
}
