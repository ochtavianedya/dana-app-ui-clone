import 'package:flutter/material.dart';
import 'package:dana_app_ui_clone/core.dart';
import '../view/wallet_view.dart';

class WalletController extends State<WalletView> {
  static late WalletController instance;
  late WalletView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool isSlideDown = false;
  updateSlideStatus(bool newStatus) {
    isSlideDown = newStatus;
    setState(() {});
  }
}
