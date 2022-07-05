import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:provider/provider.dart';
import 'package:zazu/ProductDetailPage/rectangle.dart';
import 'package:zazu/styles/Styles.dart';

import '../Providers/Productdetailpageprovider/ProductDetailPageProvider.dart';

class ProductDetailPage extends StatelessWidget {
  ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: true,
          backgroundColor: white,
          leading: const BackButton(
            color: Colors.black,
          ),
          title: Text(
            'Product Details',
            style: Styles()
                .normalS(fontW: FontWeight.normal, fontS: 22, color: black),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: Consumer<ProductDetailPageProvider>(
            builder: (context, provider, child) {
          return SizedBox(
            width: w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      width: w,
                      child: Carousel(
                        height: w + 100,
                        indicatorBarColor: Colors.white,
                        autoScrollDuration: const Duration(seconds: 2),
                        animationPageDuration:
                            const Duration(milliseconds: 500),
                        activateIndicatorColor: Colors.pink.shade100,
                        animationPageCurve: Curves.bounceInOut,
                        indicatorBarHeight: 50,
                        indicatorHeight: 10,
                        indicatorWidth: 10,
                        unActivatedIndicatorColor: Colors.grey.shade100,
                        stopAtEnd: true,
                        autoScroll: true,
                        // widgets
                        items: [
                          SizedBox(
                            width: w,
                            child: Image.asset('assets/images/img_2.png',
                                fit: BoxFit.cover),
                          ),
                          SizedBox(
                            width: w,
                            child: Image.asset('assets/images/img_2.png',
                                fit: BoxFit.cover),
                          ),
                          SizedBox(
                            width: w,
                            child: Image.asset('assets/images/img_2.png',
                                fit: BoxFit.cover),
                          )
                        ],
                      )),
                  Container(
                    width: w,
                    margin: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LADIES GOWN',
                          style: Styles().normalS(
                              fontW: FontWeight.w600, fontS: 20, color: black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'RS :',
                              style: Styles().normalS(
                                  fontW: FontWeight.normal,
                                  fontS: 17,
                                  color: black),
                            ),
                            Text(
                              ' 899',
                              style: Styles().normalS(
                                  fontW: FontWeight.w500,
                                  fontS: 20,
                                  color: black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'AVAILABLE IN :',
                              style: Styles().normalS(
                                  fontW: FontWeight.normal,
                                  fontS: 17,
                                  color: black),
                            ),
                            Text(
                              ' S,M,L,XL',
                              style: Styles().normalS(
                                  fontW: FontWeight.w600,
                                  fontS: 20,
                                  color: black),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'AVAILABLE IN :   ',
                              style: Styles().normalS(
                                  fontW: FontWeight.normal,
                                  fontS: 17,
                                  color: black),
                            ),
                            Rectangles().rectangles(clr: Colors.red),
                            const SizedBox(
                              width: 25,
                            ),
                            Rectangles().rectangles(clr: Colors.indigo),
                            const SizedBox(
                              width: 25,
                            ),
                            Rectangles().rectangles(clr: Colors.purple),
                            const SizedBox(
                              width: 25,
                            ),
                            Rectangles().rectangles(clr: Colors.green),
                          ],
                        ),

const SizedBox(height: 20,),
                        Row(
                          children: [
                            Text(
                              'SET COUNT :',
                              style: Styles().normalS(
                                  fontW: FontWeight.normal,
                                  fontS: 17,
                                  color: black),
                            ),




                            Container(width: 150,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                                      child: Container(width: 40,height: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: IconButton(
                                              padding: EdgeInsets.zero,
                                              color: Colors.black,
                                              onPressed: () {
                                                provider.decrementquantity();
                                              },
                                              icon: const Icon(Icons.remove))),
                                    ),
                                    Text(
                                      "${provider.quantity}",
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                                      child: Container(width: 40,height: 40,
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: IconButton(
                                              padding: EdgeInsets.zero,
                                              color: Colors.black,
                                              onPressed: () {
                                                provider.incrementquantity();
                                              },
                                              icon: const Icon(Icons.add))),
                                    ),

                                  ],
                                ),
                              ),
                            ),


                          ],
                        ),

                        const SizedBox(height: 20,),

                        Row(
                          children: [
                            Text(
                              'MATERIAL :',
                              style: Styles().normalS(
                                  fontW: FontWeight.normal,
                                  fontS: 17,
                                  color: black),
                            ),
                            Text(
                              ' SAMPLE',
                              style: Styles().normalS(
                                  fontW: FontWeight.w500,
                                  fontS: 20,
                                  color: black),
                            ),
                          ],
                        ),


                        const SizedBox(height: 30,),


                        Text(
                          'Description:',
                          style: Styles().normalS(
                              fontW: FontWeight.normal,
                              fontS: 18,
                              color: black),
                        ),
                        const SizedBox(height: 15,),

                        Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled iining essentially unchanged. ',
                          style: Styles().normalS(
                              fontW: FontWeight.normal,
                              fontS: 16,
                              color: black),textDirection: TextDirection.ltr,maxLines: 4,
                        ),

                        const SizedBox(height: 30,),
                        SizedBox(width: w,
                          child: FlatButton(
                              color: primary1,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Text(
                                'ADD TO CART',
                                style: Styles().normalS(
                                    fontW: FontWeight.normal,
                                    fontS: 15,
                                    color: white),
                              ),
                              onPressed: () {

                              }),
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }));
  }
}
