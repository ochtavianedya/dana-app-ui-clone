import 'package:flutter/material.dart';
import 'package:dana_app_ui_clone/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../view/send_money_view.dart';

class SendMoneyController extends State<SendMoneyView> {
  static late SendMoneyController instance;
  late SendMoneyView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List quickSend = [
    {"image": "https://i.ibb.co/PGv8ZzG/me.jpg", "name": "Ochtavian"},
    {
      "image":
          "https://images.unsplash.com/photo-1500048993953-d23a436266cf?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
      "name": "Rendy"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1491349174775-aaafddd81942?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
      "name": "Salsha"
    },
    {
      "image":
          "https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
      "name": "Jonathan"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1542206395-9feb3edaa68d?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzJ8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
      "name": "Melanie"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
      "name": "Anggi"
    },
    {
      "image":
          "https://images.unsplash.com/photo-1544723795-3fb6469f5b39?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDN8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
      "name": "Jordan"
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS72TM9eGU8zvPVMA-zIKRGVO6JXaCypmFLzZazBgqkvw&s",
      "name": "Ali"
    },
  ];

  List menuIcons = [
    {
      "icon": Icons.send,
      "color": const Color(0xff01a952),
      "label": "Send to\nGroup",
    },
    {
      "icon": Icons.people,
      "color": const Color(0xff0090f1),
      "label": "Send to\nFriend",
    },
    {
      "icon": MdiIcons.bank,
      "color": const Color(0xffed8d17),
      "label": "Send to\nBank",
    },
    {
      "icon": MdiIcons.wallet,
      "color": const Color(0xff3bb591),
      "label": "Send to\ne-Wallet",
    },
    {
      "icon": MdiIcons.cash,
      "color": const Color(0xfffd1e35),
      "label": "Cash\nWithdrawal",
    },
    {
      "icon": Icons.wallet_giftcard,
      "color": const Color(0xff0090f1),
      "label": "DANA\nShocked",
    },
  ];
}
