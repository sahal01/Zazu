import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Providers/Cartprovider/Cartprovider.dart';
import '../../utils/Styles.dart';
import '../../utils/colors.dart';
import '../CommonWidgets/Button.dart';

class Cart extends StatelessWidget {
  Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> productnames = [
      "LADIES GOWN MODEL 1",
      "LADIES GOWN MODEL 2",
      "LADIES GOWN MODEL 3"
    ];
    List<double> productprice = [899, 1000, 1345];
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: true,
          backgroundColor: AppColors.white,
          leading: const BackButton(
            color: Colors.black,
          ),
          title: Text(
            'CART',
            style: Styles().normalS(
                fontW: FontWeight.normal, fontS: 22, color: AppColors.black),
          ),
        ),
        body: Consumer<CartProvider>(builder: (context, provider, child) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ListView.builder(
                  itemCount: 3,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        width: w - 24,
                        child: Container(
                            width: w,
                            height: 130,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.primary1),
                              borderRadius: BorderRadius.circular(1),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                      width: w / 8,
                                      child: Image.asset(
                                          'assets/images/img_2.png',
                                          fit: BoxFit.cover)),
                                  SizedBox(
                                    width: w - w / 8 - 34,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                productnames[index],
                                                style: Styles().normalS(
                                                    fontW: FontWeight.w500,
                                                    fontS: 17,
                                                    color: AppColors.black),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                'Material:sample',
                                                style: Styles().normalS(
                                                    fontW: FontWeight.normal,
                                                    fontS: 16,
                                                    color: AppColors.black),
                                              ),
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'RS :',
                                                    style: Styles().normalS(
                                                        fontW:
                                                            FontWeight.normal,
                                                        fontS: 16,
                                                        color: AppColors.black),
                                                  ),
                                                  Text(
                                                    productprice[index]
                                                        .toString(),
                                                    style: Styles().normalS(
                                                        fontW: FontWeight.w500,
                                                        fontS: 18,
                                                        color: AppColors.black),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                IconButton(
                                                  icon: Icon(
                                                    Icons.delete,
                                                    color: AppColors.black,
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                SizedBox(
                                                  width: 150,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5.0),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical:
                                                                      5.0),
                                                          child: Container(
                                                              width: 40,
                                                              height: 40,
                                                              decoration:
                                                                  BoxDecoration(
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .black),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                              child: IconButton(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  color: Colors
                                                                      .black,
                                                                  onPressed:
                                                                      () {
                                                                    provider
                                                                        .decrementquantity();
                                                                  },
                                                                  icon: const Icon(
                                                                      Icons
                                                                          .remove))),
                                                        ),
                                                        Text(
                                                          "${provider.quantity}",
                                                          style: const TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  vertical:
                                                                      5.0),
                                                          child: Container(
                                                              width: 40,
                                                              height: 40,
                                                              decoration:
                                                                  BoxDecoration(
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .black),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                              child: IconButton(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  color: Colors
                                                                      .black,
                                                                  onPressed:
                                                                      () {
                                                                    provider
                                                                        .incrementquantity();
                                                                  },
                                                                  icon: const Icon(
                                                                      Icons
                                                                          .add))),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 100,
                ),
                const Divider(color: AppColors.grey),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'PRICE :',
                        style: Styles().normalS(
                            fontW: FontWeight.w500,
                            fontS: 16,
                            color: AppColors.black),
                      ),
                      Text(
                        'RS 899',
                        style: Styles().normalS(
                            fontW: FontWeight.w500,
                            fontS: 16,
                            color: AppColors.black),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TAX :',
                        style: Styles().normalS(
                            fontW: FontWeight.w500,
                            fontS: 16,
                            color: AppColors.black),
                      ),
                      Text(
                        'RS 109',
                        style: Styles().normalS(
                            fontW: FontWeight.w500,
                            fontS: 16,
                            color: AppColors.black),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TOTAL :',
                        style: Styles().normalS(
                            fontW: FontWeight.w500,
                            fontS: 19,
                            color: AppColors.black),
                      ),
                      Text(
                        'RS 1008',
                        style: Styles().normalS(
                            fontW: FontWeight.w500,
                            fontS: 19,
                            color: AppColors.black),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: w - 24,
                  child: Button().button(action: () {}, txt: "PLACE ORDER"),
                )
              ],
            ),
          );
        }));
  }
}
