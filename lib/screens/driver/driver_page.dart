import 'package:car_dispatcher_flutter_edu/design/colors.dart';
import 'package:car_dispatcher_flutter_edu/design/images.dart';
import 'package:car_dispatcher_flutter_edu/design/style.dart';
import 'package:car_dispatcher_flutter_edu/screens/driver/driver_list.dart';
import 'package:flutter/material.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Select driver", style: primaryTextStyle),
          centerTitle: true,
          backgroundColor: surfaceColor,
          elevation: 0,
          leading: IconButton(
            icon: arrowBackImage,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          color: backgroundColor,
          child: const DriverList(),
        ));
  }
}
