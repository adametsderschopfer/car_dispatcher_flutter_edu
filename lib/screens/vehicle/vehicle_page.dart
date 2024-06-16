import 'package:car_dispatcher_flutter_edu/design/colors.dart';
import 'package:flutter/material.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Car Dispatcher"),
        ),
        body: Container(
          color: backgroundColor,
          child: const Text("ToDo: Body"),
        ));
  }
}
