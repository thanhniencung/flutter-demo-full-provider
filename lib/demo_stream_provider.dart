import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/widgets.dart';

class DemoStreamProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<int>.value(
      value: getAge(),
      child: DemoFutureWidget(),
    );
  }

  Stream<int> getAge() {
    return Stream.fromFuture(Future.delayed(Duration(seconds: 1), () {
      return 250;
    }));
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
