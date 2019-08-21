import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';

// ChangeNotifierProvide
class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;
  increment() {
    _count++;
    notifyListeners();
  }
}

class DemoChangeNotifierProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Counter>(
      builder: (context) => Counter(),
      child: TestWidget(),
    );
  }
}

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Counter counter = Provider.of<Counter>(context);
    return Center(
      child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                counter.count.toString(),
                style: TextStyle(fontSize: 40),
              ),
              RaisedButton(
                onPressed: () {
                  counter.increment();
                },
                child: Text(
                  "Increment",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ]),
      ),
    );
  }
}
