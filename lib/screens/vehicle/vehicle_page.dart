import 'package:car_dispatcher_flutter_edu/design/colors.dart';
import 'package:car_dispatcher_flutter_edu/design/dimensions.dart';
import 'package:car_dispatcher_flutter_edu/screens/vehicle/vehicle_list.dart';
import 'package:flutter/material.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Car Dispatcher",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: baseFontSize,
                  fontWeight: FontWeight.w500)),
          centerTitle: true,
          backgroundColor: surfaceColor,
          elevation: 0,
        ),
        body: Container(
          color: backgroundColor,
          child: const VehicleList(),
        ));
  }
}
