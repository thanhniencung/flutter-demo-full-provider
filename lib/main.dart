import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'basic.dart';
import 'demo_change_notifier.dart';
import 'demo_proxy_provider.dart';
import 'demo_value_listenable_provider.dart';
import 'demo_future_provider.dart';
import 'demo_stream_provider.dart';
import 'demo_multiple_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo Provider"),
        ),
        body: DemoFutureProvider(),
      ),
    );
  }
}
