import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dana_app_ui_clone/core.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../controller/request_money_controller.dart';

class RequestMoneyView extends StatefulWidget {
  const RequestMoneyView({Key? key}) : super(key: key);

  Widget build(context, RequestMoneyController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text("Request Money"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              MdiIcons.helpCircleOutline,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: primaryColor,
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 100,
              bottom: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  controller: ScrollController(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SingleChildScrollView(
                        controller: ScrollController(),
                        scrollDirection: Axis.horizontal,
                        clipBehavior: Clip.none,
                        child: Container(
                          margin: const EdgeInsets.only(
                            left: 30.0,
                          ),
                          child: Row(
                            children: List.generate(2, (index) {
                              return Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                margin: const EdgeInsets.only(
                                  right: 12.0,
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x19000000),
                                      blurRadius: 24,
                                      offset: Offset(0, 11),
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.wallet,
                                          size: 24.0,
                                          color: primaryColor,
                                        ),
                                        SizedBox(
                                          width: 6.0,
                                        ),
                                        Text(
                                          "DANA",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    const Text(
                                      "0821****6701",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    const Text(
                                      "John Doe",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12.0,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: QrImageView(
                                        padding: const EdgeInsets.only(
                                          left: 20.0,
                                        ),
                                        data:
                                            "JOHN-DOE-FAKE-DATA-DANA-APP-2024-JOHN-DOE-FAKE-DATA-DANA-APP-2024",
                                        version: QrVersions.auto,
                                        size: 200.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            foregroundColor: primaryColor,
                                            side: const BorderSide(
                                              color: primaryColor,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: const Text("SET AMOUNT"),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          children: [
                                            const Text(
                                              "Share link to request now",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8.0,
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              width: 200.0,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[200],
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(
                                                    8.0,
                                                  ),
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      children: [
                                                        Icon(
                                                          MdiIcons.whatsapp,
                                                          size: 24.0,
                                                          color: const Color(
                                                              0xff25d366),
                                                        ),
                                                        const SizedBox(
                                                          height: 6.0,
                                                        ),
                                                        const Text(
                                                          "WhatsApp",
                                                          style: TextStyle(
                                                            fontSize: 10.0,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Column(
                                                      children: [
                                                        Icon(
                                                          Icons.more_horiz,
                                                          size: 24.0,
                                                          color:
                                                              Colors.grey[700],
                                                        ),
                                                        const SizedBox(
                                                          height: 6.0,
                                                        ),
                                                        const Text(
                                                          "Others",
                                                          style: TextStyle(
                                                            fontSize: 10.0,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        "SPLIT BILL",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(12.0),
                            decoration: const BoxDecoration(
                              color: Color(0xffdcf6e9),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Split Bill with everyone!",
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              color: primaryColor,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Text(
                                            "Need to request money to multiple\nPeople? Sure thing!",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: primaryColor,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20.0,
                                          ),
                                          OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              foregroundColor: primaryColor,
                                              backgroundColor: Colors.white,
                                              side: const BorderSide(
                                                color: primaryColor,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: const Text("SPLIT BILL"),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Icon(
                                      MdiIcons.walletBifold,
                                      size: 48.0,
                                      color: primaryColor,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 80.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<RequestMoneyView> createState() => RequestMoneyController();
}
