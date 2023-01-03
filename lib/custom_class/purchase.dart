import 'package:flutter/material.dart';
import '../Const/Colors/app_color.dart';
import '../Const/Colors/colors.dart';
import '../Const/Styles/font_styles.dart';

class Purchase {
  getPurchase() {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
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
                      "Dues",
                      style: TextStyle(
                          fontFamily: poppinSemibold, color: kTitleColor),
                    )),
                Container(
                  height: 46,
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: RichText(
                    text: const TextSpan(
                      text: 'Previous Due',
                      style: TextStyle(
                          fontFamily: poppinSemibold,
                          color: kSubTittleColor,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  01 January 2022',
                            style: TextStyle(
                                fontFamily: poppinSemibold,
                                fontWeight: FontWeight.w400,
                                color: kSubTittleColor)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 78,
              color: AppColor.gLightcolor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    " Due",
                    style: TextStyle(
                        fontFamily: interMedium, color: kSubTittleColor),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text("\৳20000",
                      style: TextStyle(
                          fontFamily: poppinSemibold, color: kDueAmountColor))
                ],
              ),
            ),
          ]),

          //2nd Row..........................................
          TableRow(children: [
            Column(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 15, top: 7),
                    height: 32,
                    width: double.infinity,
                    color: AppColor.gDarkcolor,
                    child: const Text("Purchase",
                        style: TextStyle(
                            fontFamily: poppinSemibold,
                            color: kTitleColor))),
                Container(
                  child: Column(
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
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '01 January 2022',
                                        style: TextStyle(
                                            fontFamily: poppinSemibold,
                                            color: kSubTittleColor)),
                                  ],
                                ),
                              ),
                              RichText(
                                text: const TextSpan(
                                  text: 'Invoice No : ',
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: '5386328',
                                        style: TextStyle(
                                            fontFamily: poppinSemibold,
                                            color: kSubTittleColor)),
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
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Test product 01",
                                    style: TextStyle(
                                        fontFamily: poppinSemibold,
                                        color: kSubTittleColor),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("200 pcs × 200",
                                      style: TextStyle(
                                          fontFamily: poppinSemibold,
                                          color: kSubTittleColor))
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text(
                                "\৳40000",
                                style: TextStyle(
                                    fontFamily: poppinSemibold,
                                    color: kSubTittleColor),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Test product 01",
                                    style: TextStyle(
                                        fontFamily: poppinSemibold,
                                        color: kSubTittleColor),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("20 pcs × 300",
                                      style: TextStyle(
                                          fontFamily: poppinSemibold,
                                          color: kSubTittleColor))
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text(
                                "\৳6000",
                                style: TextStyle(
                                    fontFamily: poppinSemibold,
                                    color: kSubTittleColor),
                                textAlign: TextAlign.right,
                              ),
                            )
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Test product 01",
                                      style: TextStyle(
                                          fontFamily: poppinSemibold,
                                          color: kSubTittleColor)),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text("20 pcs × 200",
                                      style: TextStyle(
                                          fontFamily: poppinSemibold,
                                          color: kSubTittleColor))
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text(
                                "\৳4000",
                                style: TextStyle(
                                    fontFamily: poppinSemibold,
                                    color: kSubTittleColor),
                                textAlign: TextAlign.right,
                              ),
                            )
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
                              padding: EdgeInsets.only(left: 15, top: 10),
                              child: Text("Discount",
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15, top: 10),
                              child: Text("\৳0",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: Text("VAT",
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text("\৳0",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
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
                        columnWidths: const {
                          0: FlexColumnWidth(183),
                          1: FlexColumnWidth(80),
                        },
                        children: const [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15, top: 10),
                              child: Text("Grand Total",
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15, top: 10),
                              child: Text("\৳50000",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: Text("Previous Due",
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text("\৳20000",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
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
                        columnWidths: const {
                          0: FlexColumnWidth(183),
                          1: FlexColumnWidth(80),
                        },
                        children: const [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15, top: 10),
                              child: Text("Total Amount",
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15, top: 10),
                              child: Text("\৳70000",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10),
                              child: Text("Total Payment",
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text("\৳40000",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
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
                        columnWidths: const {
                          0: FlexColumnWidth(183),
                          1: FlexColumnWidth(80),
                        },
                        children: const [
                          TableRow(children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 15, top: 10, bottom: 10),
                              child: Text("Remaining Balance",
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 15, top: 10, bottom: 10),
                              child: Text("\৳30000",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontFamily: poppinSemibold,
                                      color: kSubTittleColor)),
                            ),
                          ]),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              height: 522,
              color: AppColor.gLightcolor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(" Due",
                      style: TextStyle(
                          fontFamily: interMedium, color: kSubTittleColor)),
                  SizedBox(
                    height: 3,
                  ),
                  Text("\৳30000",
                      style: TextStyle(
                          fontFamily: poppinSemibold, color: kDueAmountColor))
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
