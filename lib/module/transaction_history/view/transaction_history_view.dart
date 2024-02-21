import 'package:flutter/material.dart';
import 'package:dana_app_ui_clone/core.dart';
import '../controller/transaction_history_controller.dart';

class TransactionHistoryView extends StatefulWidget {
  const TransactionHistoryView({Key? key}) : super(key: key);

  Widget build(context, TransactionHistoryController controller) {
    controller.view = this;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
            indicator: TriangleTabIndicator(
              color: Colors.white,
            ),
            tabs: const [
              Tab(
                text: "In Progress",
              ),
              Tab(
                text: "Completed",
              ),
            ],
          ),
          title: const Text('Transaction History'),
        ),
        body: const TabBarView(
          children: [
            TransactionHistoryInProgressView(),
            TransactionHistoryCompletedView()
          ],
        ),
      ),
    );
  }

  @override
  State<TransactionHistoryView> createState() => TransactionHistoryController();
}

class TriangleTabIndicator extends Decoration {
  final BoxPainter _painter;

  TriangleTabIndicator({@required Color? color, double? radius})
      : _painter = DrawTriangle(Colors.white);

  @override
  BoxPainter createBoxPainter([Function? onChanged]) => _painter;
}

class DrawTriangle extends BoxPainter {
  Paint? _paint;

  DrawTriangle(Color color) {
    _paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Offset triangleOffset = offset +
        Offset(configuration.size!.width / 2, configuration.size!.height - 10);
    var path = Path();

    path.moveTo(triangleOffset.dx, triangleOffset.dy);
    path.lineTo(triangleOffset.dx + 10, triangleOffset.dy + 10);
    path.lineTo(triangleOffset.dx - 10, triangleOffset.dy + 10);

    path.close();
    canvas.drawPath(path, _paint!);
  }
}
