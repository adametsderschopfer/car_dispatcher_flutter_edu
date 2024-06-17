import 'package:car_dispatcher_flutter_edu/design/colors.dart';
import 'package:car_dispatcher_flutter_edu/design/images.dart';
import 'package:car_dispatcher_flutter_edu/design/style.dart';
import 'package:flutter/material.dart';

class VehicleItem extends StatelessWidget {
  final Function() onTap;

  const VehicleItem({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Card(
        color: surfaceColor,
        margin: EdgeInsets.zero,
        elevation: 0.06,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 16),
              child: Row(
                children: <Widget>[vehicleMotorcycleImage, _title(), _state()],
              )),
        ),
      ),
    );
  }

  Widget _title() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 6, right: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "BMW GS-7638",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: body2TextStyle,
            ),
            if (false) // ToDo
              const Text(
                "No driver",
                style: hint1TextStyle,
              )
            else
              RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "Driver: ",
                      style: hint1TextStyle,
                    ),
                    TextSpan(
                      text: "Konstantin",
                      style: body2TextStyle,
                    ),
                  ]))
          ],
        ),
      ),
    );
  }

  Widget _state() {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          stateLoadImage,
          const Text(
            style: hint2TextStyle,
            "load",
          )
        ],
      ),
    );
  }
}
