import 'package:flutter/material.dart';
import 'package:dana_app_ui_clone/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/topup_controller.dart';

class TopupView extends StatefulWidget {
  const TopupView({Key? key}) : super(key: key);

  Widget build(context, TopupController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        title: const Text("Top Up"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: Text(
                      "How would you like to top up\nDANA Balance?",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    MdiIcons.helpCircleOutline,
                    size: 24.0,
                    color: primaryColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "MY SAVED CARDS",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50.0,
                      height: 30.0,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.all(0.0),
                          foregroundColor: primaryColor,
                          backgroundColor: const Color(0xffe6f5ff),
                          side: const BorderSide(
                            color: primaryColor,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.add,
                          size: 20.0,
                          color: primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "New Card",
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Row(
                            children: [
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/349/349221.png",
                                height: 20.0,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/14062/14062982.png",
                                height: 20.0,
                                fit: BoxFit.fill,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/349/349228.png",
                                height: 20.0,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 24.0,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "BANK TRANSFER",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount: controller.bankTransferList.length,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var item = controller.bankTransferList[index];
                        return ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.network(
                            item["image"],
                            width: 54.0,
                            height: 32.0,
                            fit: BoxFit.fitWidth,
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            size: 24.0,
                            color: Colors.grey[400],
                          ),
                        );
                      },
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text(
                        "See more banks",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: primaryColor,
                        ),
                      ),
                      subtitle: Text(
                        "Mandiri, CIMB Niaga and other banks",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[400],
                        ),
                      ),
                      trailing: Icon(
                        MdiIcons.chevronDown,
                        size: 24.0,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "AGENT",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text(
                        "Nearby Agent",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Find your nearest agent!",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[400],
                        ),
                      ),
                      trailing: Transform.scale(
                        scale: 0.8,
                        alignment: Alignment.centerRight,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: primaryColor,
                            side: const BorderSide(
                              color: primaryColor,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("OPEN MAP"),
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: controller.agentList.length,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var item = controller.agentList[index];
                        List images = item["image"];
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 6.0,
                          ),
                          child: Row(
                            children: [
                              ...List.generate(images.length, (index) {
                                var image = images[index];
                                return Container(
                                  margin: const EdgeInsets.only(
                                    right: 6.0,
                                    bottom: 6.0,
                                  ),
                                  child: Image.network(
                                    image,
                                    width: 64.0,
                                    height: 32.0,
                                    fit: BoxFit.fitWidth,
                                  ),
                                );
                              }),
                              const Spacer(),
                              Icon(
                                Icons.chevron_right,
                                size: 24.0,
                                color: Colors.grey[400],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: const Text(
                        "See more agent",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: primaryColor,
                        ),
                      ),
                      subtitle: Text(
                        "POS Indonesia, BPR KS and other agents",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[400],
                        ),
                      ),
                      trailing: Icon(
                        MdiIcons.chevronDown,
                        size: 24.0,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "OTHER",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(12.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      8.0,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      "https://storage.googleapis.com/static-cms-prod/2022/12/oneklik-e12664784d48ebe913b7cb8b6e2054f0_11zon.png",
                      height: 16.0,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "BCA debit card",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TopupView> createState() => TopupController();
}
