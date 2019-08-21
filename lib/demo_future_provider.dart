import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';

class DemoFutureProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureProvider<int>.value(
      initialData: 0,
      value: getAge(),
      child: DemoFutureWidget(),
    );
  }

  Future<int> getAge() {
    return Future.delayed(Duration(seconds: 1), () {
      return 500;
    });
  }
}

class DemoFutureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<int>(
      builder: (context, value, child) {
        return Center(
          child: Text(
            value.toString(),
            style: TextStyle(fontSize: 20),
          ),
        );
      },
    );
  }
}
