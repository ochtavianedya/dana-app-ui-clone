import 'package:flutter/material.dart';
import 'package:dana_app_ui_clone/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/profile_business_controller.dart';

class ProfileBusinessView extends StatefulWidget {
  const ProfileBusinessView({Key? key}) : super(key: key);

  Widget build(context, ProfileBusinessController controller) {
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
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/2760/2760980.png",
                              width: 80.0,
                              height: 80.0,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Let's register with DANA\nBusiness!",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Business flow is more practical with a variety of digital services",
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
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Enjoy the benefits!",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 8.0,
                              ),
                              Builder(builder: (context) {
                                List listItem = [
                                  {
                                    "title": "Grow with DANA Business",
                                    "subtitle":
                                        "Get more customers with digital financial services",
                                    "image":
                                        "https://cdn-icons-png.flaticon.com/128/1533/1533565.png"
                                  },
                                  {
                                    "title":
                                        "The more you develop, the more profit you make",
                                    "subtitle":
                                        "Level up to gain benefits at each level of the Business Journey",
                                    "image":
                                        "https://cdn-icons-png.flaticon.com/128/1390/1390713.png"
                                  },
                                  {
                                    "title": "Get QRIS business",
                                    "subtitle":
                                        "Use the QRIS code for fast and flexible payments",
                                    "image":
                                        "https://cdn-icons-png.flaticon.com/128/825/825569.png"
                                  },
                                ];
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  itemCount: listItem.length,
                                  shrinkWrap: true,
                                  physics: const ScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    var item = listItem[index];
                                    return ListTile(
                                      contentPadding: const EdgeInsets.all(0.0),
                                      minLeadingWidth: 0.0,
                                      leading: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                          item["image"],
                                        ),
                                      ),
                                      title: Text(
                                        item["title"],
                                        style: const TextStyle(
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      subtitle: Text(
                                        item["subtitle"],
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey[600],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }),
                              const SizedBox(
                                height: 8.0,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: primaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "REGISTER NOW",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                        child: Column(
                          children: [
                            const Text(
                              "Become a featured merchant on Business Travel!",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/2382/2382625.png",
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: const Color(0xff4aacf3)
                                            .withOpacity(0.2),
                                        child: Icon(
                                          MdiIcons.arrowUpBoldBox,
                                          color: primaryColor,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 6.0,
                                      ),
                                      const Text(
                                        "Increase profit every time you\nlevel up",
                                        style: TextStyle(
                                          fontSize: 10.0,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: const Color(0xff4aacf3)
                                            .withOpacity(0.2),
                                        child: Icon(
                                          MdiIcons.wallet,
                                          color: primaryColor,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 6.0,
                                      ),
                                      const Text(
                                        "High monthly balance withdrawal limit",
                                        style: TextStyle(
                                          fontSize: 10.0,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundColor: const Color(0xff4aacf3)
                                            .withOpacity(0.2),
                                        child: const Icon(
                                          Icons.payment,
                                          color: primaryColor,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 6.0,
                                      ),
                                      const Text(
                                        "Accept debit & credit card payments",
                                        style: TextStyle(
                                          fontSize: 10.0,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
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
  State<ProfileBusinessView> createState() => ProfileBusinessController();
}
