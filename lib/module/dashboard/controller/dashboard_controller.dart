import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:dana_app_ui_clone/core.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  // menu
  List menuItem = [
    {
      "image": "https://cdn-icons-png.flaticon.com/128/3437/3437364.png",
      "label": "Pulsa &\nData",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/128/11104/11104234.png",
      "label": "Google &\nPlay Store",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/128/744/744922.png",
      "label": "User &\nRewards",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/128/4854/4854246.png",
      "label": "Games &\nWallet",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/128/2966/2966486.png",
      "label": "BPJS\nKesehatan",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/128/5412/5412898.png",
      "label": "Super\nDeals",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/128/728/728139.png",
      "label": "Electricity\nBills",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/128/5996/5996651.png",
      "label": "View\nAll",
    },
  ];

  // carousel slide
  int currentIndex = 0;
  final CarouselController carouselController = CarouselController();

  // news menu
  List newsMenuItem = [
    {
      "image": "https://cdn-icons-png.flaticon.com/128/11170/11170872.png",
      "label": "#Bukan Dompet Biasa",
      "description": "Semua transaksi bisa di DANA"
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/128/11273/11273602.png",
      "label": "Bye Modus Penipuan",
      "description": "Cek tips aman DANA yuk!"
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/128/1493/1493574.png",
      "label": "Serbu Diskon Lazada",
      "description": "Pakai DANA diskon s/d 40RB!"
    },
  ];
}
