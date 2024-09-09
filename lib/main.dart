import 'package:flutter/cupertino.dart';
import 'screens/adjustment_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.light,
      ),
      home: AdjustmentScreen(),
    );
  }
}
