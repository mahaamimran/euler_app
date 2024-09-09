
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdjustmentScreen extends StatefulWidget {
  @override
  _AdjustmentScreenState createState() => _AdjustmentScreenState();
}

class _AdjustmentScreenState extends State<AdjustmentScreen> {
  // These variables hold the slider values
  double value1 = 50;
  double value2 = 30;
  double value3 = 70;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Adjustment Screen'),
      ),
      child: Row(
        children: [
          // Sidebar with tabs
          Container(
            width: 100,
            color: CupertinoColors.lightBackgroundGray,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  child: Text('Tab 1'),
                  onPressed: () {
                    // Tab 1 action
                  },
                ),
                CupertinoButton(
                  child: Text('Tab 2'),
                  onPressed: () {
                    // Tab 2 action
                  },
                ),
                CupertinoButton(
                  child: Text('Tab 3'),
                  onPressed: () {
                    // Tab 3 action
                  },
                ),
              ],
            ),
          ),
          // Main content with sliders
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Adjust Value 1', style: CupertinoTheme.of(context).textTheme.navTitleTextStyle),
                  CupertinoSlider(
                    value: value1,
                    min: 0,
                    max: 100,
                    onChanged: (double newValue) {
                      setState(() {
                        value1 = newValue;
                      });
                    },
                  ),
                  Text('Current Value: $value1'),
                  SizedBox(height: 20),
                  Text('Adjust Value 2', style: CupertinoTheme.of(context).textTheme.navTitleTextStyle),
                  CupertinoSlider(
                    value: value2,
                    min: 0,
                    max: 100,
                    onChanged: (double newValue) {
                      setState(() {
                        value2 = newValue;
                      });
                    },
                  ),
                  Text('Current Value: $value2'),
                  SizedBox(height: 20),
                  Text('Adjust Value 3', style: CupertinoTheme.of(context).textTheme.navTitleTextStyle),
                  CupertinoSlider(
                    value: value3,
                    min: 0,
                    max: 100,
                    onChanged: (double newValue) {
                      setState(() {
                        value3 = newValue;
                      });
                    },
                  ),
                  Text('Current Value: $value3'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

