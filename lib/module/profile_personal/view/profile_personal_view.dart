import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:dana_app_ui_clone/core.dart';
import '../controller/profile_personal_controller.dart';

class ProfilePersonalView extends StatefulWidget {
  const ProfilePersonalView({Key? key}) : super(key: key);

  Widget build(context, ProfilePersonalController controller) {
    controller.view = this;
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 300,
              padding: const EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: primaryColor,
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            const CircleAvatar(
                              radius: 38.0,
                              backgroundImage: NetworkImage(
                                "https://i.ibb.co/PGv8ZzG/me.jpg",
                              ),
                            ),
                            const SizedBox(
                              height: 4.0,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                                vertical: 4.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(12.0),
                                ),
                                color: Colors.white.withOpacity(0.4),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.wallet,
                                    size: 16.0,
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    "PREMIUM",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "JOHN DOE",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              const Text(
                                "0821****6701",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              SizedBox(
                                height: 30.0,
                                child: OutlinedButton.icon(
                                  icon: const Icon(
                                    Icons.qr_code_scanner,
                                    size: 16.0,
                                  ),
                                  label: const Text(
                                    "SHOW MY QR >",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    side: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 240,
              left: 20,
              right: 20,
              bottom: -20,
              child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Activate DANA Viz now to stay protected",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  SizedBox(
                                    height: 10,
                                    child: LinearProgressIndicator(
                                      value: 0.2,
                                      color: primaryColor,
                                      backgroundColor: const Color(0xff4aacf3)
                                          .withOpacity(0.4),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(12.0),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "Make your DANA account more secure!",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              MdiIcons.chevronRight,
                              color: Colors.grey,
                              size: 24.0,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
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
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Builder(builder: (context) {
                                List menuItems = [
                                  {
                                    "icon": MdiIcons.wallet,
                                    "iconColor": primaryColor,
                                    "label": "Balance",
                                    "value": "Rp.55.000"
                                  },
                                  {
                                    "icon": MdiIcons.target,
                                    "iconColor": const Color(0xfffa5c5c),
                                    "label": "DANA Goals",
                                    "value": "Create Goals"
                                  },
                                  {
                                    "icon": MdiIcons.accountGroup,
                                    "iconColor": const Color(0xfff78e05),
                                    "label": "Family Acc",
                                    "value": "Let's Activate!"
                                  },
                                  {
                                    "icon": MdiIcons.gold,
                                    "iconColor": const Color(0xffef9e49),
                                    "label": "eMAS",
                                    "value": "Start Investing"
                                  },
                                ];

                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 1.0,
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 6,
                                    crossAxisSpacing: 6,
                                  ),
                                  itemCount: menuItems.length,
                                  shrinkWrap: true,
                                  physics: const ScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var item = menuItems[index];
                                    return InkWell(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            item["icon"],
                                            color: item["iconColor"],
                                            size: 32.0,
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            item["label"],
                                            style: const TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          Text(
                                            item["value"],
                                            style: const TextStyle(
                                              fontSize: 14.0,
                                              color: primaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              }),
                            ),
                            Divider(
                              color: Colors.grey[300],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Color(0xff3ec17d),
                                          child: Icon(
                                            Icons.arrow_downward,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12.0,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Income",
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 4.0,
                                              ),
                                              const Text(
                                                "Rp. 20.000,-",
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Color(0xffdd932d),
                                          child: Icon(
                                            Icons.arrow_upward,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12.0,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Expense",
                                                style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.grey[600],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 4.0,
                                              ),
                                              const Text(
                                                "Rp. 100.000,-",
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Builder(builder: (context) {
                          List menuItems = [
                            {
                              "icon": MdiIcons.fileDocument,
                              "label": "My Bills",
                            },
                            {
                              "icon": MdiIcons.linkBox,
                              "label": "Invitation Code",
                            },
                            {
                              "icon": MdiIcons.fileFind,
                              "label": "Fill in the Promo Code",
                            },
                            {
                              "icon": MdiIcons.chatQuestion,
                              "label": "Quest Promo",
                            },
                          ];
                          return ListView.builder(
                            itemCount: menuItems.length,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemBuilder: (BuildContext context, int index) {
                              var item = menuItems[index];
                              return ListTile(
                                leading: Icon(
                                  item["icon"],
                                  size: 24.0,
                                  color: Colors.orange,
                                ),
                                contentPadding: const EdgeInsets.all(0.0),
                                minLeadingWidth: 0.0,
                                title: Text(
                                  item["label"],
                                ),
                                trailing: const Icon(
                                  Icons.chevron_right,
                                  size: 24.0,
                                ),
                              );
                            },
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Builder(builder: (context) {
                          List menuItems = [
                            {
                              "icon": MdiIcons.account,
                              "label": "Profile Setting",
                            },
                            {
                              "icon": MdiIcons.shield,
                              "label": "Security Setting",
                            },
                            {
                              "icon": MdiIcons.link,
                              "label": "Connected Account",
                            },
                            {
                              "icon": MdiIcons.shieldAccount,
                              "label": "Verification",
                            },
                          ];
                          return ListView.builder(
                            itemCount: menuItems.length,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemBuilder: (BuildContext context, int index) {
                              var item = menuItems[index];
                              return ListTile(
                                leading: Icon(
                                  item["icon"],
                                  size: 24.0,
                                  color: primaryColor,
                                ),
                                contentPadding: const EdgeInsets.all(0.0),
                                minLeadingWidth: 0.0,
                                title: Text(
                                  item["label"],
                                ),
                                trailing: const Icon(
                                  Icons.chevron_right,
                                  size: 24.0,
                                ),
                              );
                            },
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[300]!,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Builder(builder: (context) {
                          List menuItems = [
                            {
                              "icon": MdiIcons.help,
                              "label": "Help Center",
                            },
                            {
                              "icon": MdiIcons.fileCheck,
                              "label": "Terms & Conditions",
                            },
                            {
                              "icon": MdiIcons.informationVariantCircle,
                              "label": "Privacy Policy",
                            },
                          ];
                          return ListView.builder(
                            itemCount: menuItems.length,
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            padding: EdgeInsets.zero,
                            itemBuilder: (BuildContext context, int index) {
                              var item = menuItems[index];
                              return ListTile(
                                leading: Icon(
                                  item["icon"],
                                  size: 24.0,
                                  color: primaryColor,
                                ),
                                contentPadding: const EdgeInsets.all(0.0),
                                minLeadingWidth: 0.0,
                                title: Text(
                                  item["label"],
                                ),
                                trailing: const Icon(
                                  Icons.chevron_right,
                                  size: 24.0,
                                ),
                              );
                            },
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
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
                          child: const Text(
                            "LOGOUT",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 100.0,
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
  State<ProfilePersonalView> createState() => ProfilePersonalController();
}
