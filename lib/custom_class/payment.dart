import 'package:flutter/material.dart';
import 'package:wiztechbd_task/Const/Colors/colors.dart';
import 'package:wiztechbd_task/Const/Styles/font_styles.dart';

import '../Const/Colors/app_color.dart';

class Payment{
  getPayment(){
    return Padding(
      padding:  const EdgeInsets.only(left: 16, right: 16,),
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        border: TableBorder.all(width: 1.0, color: AppColor.gDarkcolor),
        columnWidths: const {
          0: FlexColumnWidth(263),
          1: FlexColumnWidth(80),
        },
        children: [
          TableRow(children: [
            Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 15, top: 7),
                    height: 32,
                    width: double.infinity,
                    color: AppColor.gDarkcolor,
                    child: const Text(
                      "Payment",
                      style:TextStyle(fontFamily: poppinSemibold,color: kTitleColor)
                    //  poppinsStyle(14, Colors.white, FontWeight.w600),
                    )),
                Column(
                  children: [
                    Container(
                        color: AppColor.gLightcolor,
                        width: double.infinity,
                        height: 67,
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: 'Invoice Date : ',
                                style:TextStyle(fontFamily: poppinMedium,color: kSubTittleColor),
                                // poppinsStyle(
                                //     12, Colors.black, FontWeight.w500),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '01 January 2022',
                                      style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)

                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: const TextSpan(
                                text: 'Invoice No : ',
    style:TextStyle(fontFamily: poppinMedium,color: kSubTittleColor),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '53863323',
    style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)

    ),
                                ],
                              ),
                            ),
                          ],
                        )),

                    Table(
                      defaultVerticalAlignment:
                      TableCellVerticalAlignment.middle,
                      border: const TableBorder(
                        top: BorderSide(color: AppColor.gDarkcolor),
                        verticalInside:
                        BorderSide(color: AppColor.gDarkcolor),
                      ),
                      columnWidths: const {
                        0: FlexColumnWidth(183),
                        1: FlexColumnWidth(80),
                      },
                      children: const [
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 15, top: 10),
                            child: Text(
                              "Discount",
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 15, top: 10),
                            child: Text(
                              "\৳0",
                              textAlign: TextAlign.right,
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            child: Text(
                              "VAT",
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 15),
                            child: Text(
                              "\৳0",
                              textAlign: TextAlign.right,
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                        ]),
                      ],
                    ),
                    Table(
                      defaultVerticalAlignment:
                      TableCellVerticalAlignment.middle,
                      border: const TableBorder(
                        top: BorderSide(color: AppColor.gDarkcolor),
                        verticalInside:
                        BorderSide(color: AppColor.gDarkcolor),
                      ),
                      columnWidths: {
                        0: FlexColumnWidth(183),
                        1: FlexColumnWidth(80),
                      },
                      children: const [
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 15, top: 10),
                            child: Text(
                              "Grand Total",
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 15, top: 10),
                            child: Text(
                              "\৳0",
                              textAlign: TextAlign.right,
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            child: Text(
                              "Previous Due",
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 15),
                            child: Text(
                              "\৳30000",
                              textAlign: TextAlign.right,
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                        ]),
                      ],
                    ),
                    Table(
                      defaultVerticalAlignment:
                      TableCellVerticalAlignment.middle,
                      border: const TableBorder(
                        top: BorderSide(color: AppColor.gDarkcolor),
                        verticalInside:
                        BorderSide(color: AppColor.gDarkcolor),
                      ),
                      columnWidths: {
                        0: FlexColumnWidth(183),
                        1: FlexColumnWidth(80),
                      },
                      children: const [
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 15, top: 10),
                            child: Text(
                              "Total Amount",
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 15, top: 10),
                            child: Text(
                              "\৳30000",
                              textAlign: TextAlign.right,
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 10),
                            child: Text(
                              "Total Payment",
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 15),
                            child: Text(
                              "\৳10000",
                              textAlign: TextAlign.right,
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                        ]),
                      ],
                    ),
                    Table(
                      defaultVerticalAlignment:
                      TableCellVerticalAlignment.middle,
                      border: const TableBorder(
                        top: BorderSide(color: AppColor.gDarkcolor),
                        verticalInside:
                        BorderSide(color: AppColor.gDarkcolor),
                      ),
                      columnWidths: {
                        0: FlexColumnWidth(183),
                        1: FlexColumnWidth(80),
                      },
                      children: const [
                        TableRow(children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 15, top: 10, bottom: 10),
                            child: Text(
                              "Remaining Balance",
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 15, top: 10, bottom: 10),
                            child: Text(
                              "\৳20000",
                              textAlign: TextAlign.right,
                                style:TextStyle(fontFamily: poppinSemibold,color: kSubTittleColor)
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ],
                )
              ],
            ),

            Container(
              padding: EdgeInsets.only(bottom: 10),
              height: 332,
              color: AppColor.gLightcolor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    " Due",
                    style:TextStyle(fontFamily: interMedium,color: kSubTittleColor)


                  ),
                  SizedBox(height: 3,),
                  Text(
                    "\৳20000",
                      style:TextStyle(fontFamily: poppinSemibold,color: kDueAmountColor)
                  )
                ],
              ),
            ),
          ]),

        ],
      ),
    );
  }
}