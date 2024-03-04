import 'package:flutter/material.dart';
import 'package:dana_app_ui_clone/core.dart';
import '../view/topup_view.dart';

class TopupController extends State<TopupView> {
  static late TopupController instance;
  late TopupView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List bankTransferList = [
    {
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Bank_Central_Asia.svg/2560px-Bank_Central_Asia.svg.png",
    },
    {
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/BANK_BRI_logo.svg/1280px-BANK_BRI_logo.svg.png",
    },
    {
      "image":
          "https://upload.wikimedia.org/wikipedia/id/thumb/5/55/BNI_logo.svg/1280px-BNI_logo.svg.png",
    },
  ];

  List agentList = [
    {
      "image": [
        "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9d/Logo_Indomaret.png/800px-Logo_Indomaret.png?20210412042953",
      ]
    },
    {
      "image": [
        "https://logowik.com/content/uploads/images/alfamart6867.logowik.com.webp",
        "https://www.xendit.co/wp-content/uploads/2021/04/alfamidi-logo.jpg"
      ]
    },
    {
      "image": [
        "https://3.bp.blogspot.com/-hTbDIGBL_mU/WgpxUov6vUI/AAAAAAAAE0s/ZMDbnqAwoVUN_vMhV-CtF300Vy09KuscACLcBGAs/s1600/Pegadaian.jpg",
      ]
    },
  ];
}
