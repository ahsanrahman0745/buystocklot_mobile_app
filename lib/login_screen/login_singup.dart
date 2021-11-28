



import 'package:auto_size_text/auto_size_text.dart';
import 'package:buystocklot/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../constant.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
        body: ResponsiveWrapper.builder(
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/background@300x-8.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40.0,
                        vertical: 190,
                      ),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "images/logo@300x-8.png",
                        ),
                      ),
                    ),
                  ),
                  //================first button==========================
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePages()),
                        ),
                        child: Container(
                          width: 410.0,
                          height: 95.0,
                          decoration: BoxDecoration(
                            color: textWhiteColor,
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: textFontSize32, color: textBlackColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //===============Second button========================
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      child: InkWell(
                        onTap: () => print('Sign up'),
                        child: Container(
                          width: 410.0,
                          height: 95.0,
                          decoration: BoxDecoration(
                            color: textOrangeColor,
                            borderRadius: BorderRadius.circular(60.0),
                          ),
                          child: const Center(
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                  fontSize: textFontSize20, color: textWhiteColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //================bottom text==========================
                  const SizedBox(
                    height: 310,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 34),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: AutoSizeText(
                        "2018-2021 Buystocklot.com All right Reserved",
                        style:
                        TextStyle(color: textWhiteColor, fontSize: textFontSize18),
                      ),
                    ),
                  ),

                  //===================end code=======================
                ],
              ),
            ),
            maxWidth: 1500,
            minWidth: 480,
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(480, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(800, name: TABLET),
              const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ]),
      );
      // ResponsiveWrapper.builder(
      //     Column(children: [
      //       Stack(fit: StackFit.expand, children: [
      //         //image==========
      //
      //         Container(
      //           child: Image.asset(
      //             "images/background@300x-8.png",
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //         //image  logo==========
      //
      //         Container(
      //           child: Padding(
      //             padding: const EdgeInsets.symmetric(
      //               horizontal: 60.0,
      //               vertical: 250,
      //             ),
      //             child: Align(
      //               alignment: Alignment.topCenter,
      //               child: Image.asset(
      //                 "images/logo@300x-8.png",
      //               ),
      //             ),
      //           ),
      //         ),
      //
      //         //================text widget first button==================
      //
      //         Container(
      //           child: Row(
      //             children: [
      //               Padding(
      //                 padding: const EdgeInsets.symmetric(horizontal: 40.0),
      //                 child: Container(
      //                   child: new InkWell(
      //                     onTap: () => print('hello'),
      //                     child: new Container(
      //                       width: 400.0,
      //                       height: 120.0,
      //                       decoration: new BoxDecoration(
      //                         color: TextColor,
      //                         // border: new Border.all(color: TextColor),
      //                         borderRadius: new BorderRadius.circular(60.0),
      //                       ),
      //                       child: new Center(
      //                         child: new Text(
      //                           'Login',
      //                           style: new TextStyle(
      //                               fontSize: TextFontSize1, color: TextColor1),
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //
      //         //================text widget Second button==================
      //       ]),
      //     ]),
      //     maxWidth: 1500,
      //     minWidth: 480,
      //     defaultScale: true,
      //     breakpoints: [
      //       ResponsiveBreakpoint.resize(480, name: MOBILE),
      //       ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //       ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      //     ]);
    }
  }

