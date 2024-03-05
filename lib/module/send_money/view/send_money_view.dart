import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dana_app_ui_clone/core.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/send_money_controller.dart';

class SendMoneyView extends StatefulWidget {
  const SendMoneyView({Key? key}) : super(key: key);

  Widget build(context, SendMoneyController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text("Send Money"),
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
              child: SingleChildScrollView(
                controller: ScrollController(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Quick Send",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0,
                                    vertical: 12.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 5.0,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.search,
                                        size: 20.0,
                                        color: Colors.grey[400],
                                      ),
                                      const SizedBox(
                                        width: 8.0,
                                      ),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration.collapsed(
                                            hintText:
                                                "Find phone number/bank account",
                                            hintStyle: TextStyle(
                                              color: Colors.grey[400],
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 12.0,
                                ),
                                GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 1.0,
                                    crossAxisCount: 4,
                                    mainAxisSpacing: 6,
                                    crossAxisSpacing: 6,
                                  ),
                                  itemCount: controller.quickSend.length,
                                  shrinkWrap: true,
                                  physics: const ScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var item = controller.quickSend[index];
                                    return Column(
                                      children: [
                                        Expanded(
                                          child: CircleAvatar(
                                            backgroundImage: NetworkImage(
                                              item["image"],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 2.0,
                                        ),
                                        Text(
                                          item["name"],
                                          style: const TextStyle(
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "VIEW ALL",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                MdiIcons.chevronDown,
                                size: 20.0,
                                color: primaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[300]!,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1.0,
                              crossAxisCount: 3,
                              mainAxisSpacing: 6,
                              crossAxisSpacing: 6,
                            ),
                            itemCount: controller.menuIcons.length,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              var menu = controller.menuIcons[index];
                              return Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.all(12.0),
                                      child: FittedBox(
                                        child: Icon(
                                          menu["icon"],
                                          color: menu["color"],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    menu["label"],
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: const TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "VIEW ALL",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                MdiIcons.chevronDown,
                                size: 20.0,
                                color: primaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SendMoneyView> createState() => SendMoneyController();
}
