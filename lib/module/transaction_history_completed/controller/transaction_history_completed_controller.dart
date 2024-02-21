import 'package:flutter/material.dart';
import 'package:dana_app_ui_clone/core.dart';
import '../view/transaction_history_completed_view.dart';

class TransactionHistoryCompletedController
    extends State<TransactionHistoryCompletedView> {
  static late TransactionHistoryCompletedController instance;
  late TransactionHistoryCompletedView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List items = [
    {
      "image":
          "https://images.unsplash.com/photo-1499952127939-9bbf5af6c51c?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
      "title": "Send Money",
      "date": "15 February 2024 - 15:30",
      "amount": 1200000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1491349174775-aaafddd81942?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
      "title": "Send Money",
      "date": "15 February 2024 - 14:30",
      "amount": 200000,
    },
    {
      "image":
          "https://plus.unsplash.com/premium_photo-1671656349322-41de944d259b?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTN8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
      "title": "Received Money",
      "date": "15 February 2024 - 14:00",
      "amount": 100000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1557862921-37829c790f19?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTR8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
      "title": "Received Money",
      "date": "15 February 2024 - 13:30",
      "amount": 150000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1589571894960-20bbe2828d0a?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
      "title": "Send Money",
      "date": "14 February 2024 - 10:30",
      "amount": 100000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODB8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
      "title": "Received Money",
      "date": "14 February 2024 - 10:00",
      "amount": 300000,
    },
    {
      "image":
          "https://images.unsplash.com/photo-1492288991661-058aa541ff43?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTV8fHBlcnNvbnxlbnwwfHwwfHx8MA%3D%3D",
      "title": "Send Money",
      "date": "14 February 2024 - 09:00",
      "amount": 100000,
    },
  ];
}
