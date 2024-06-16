import 'package:car_dispatcher_flutter_edu/design/colors.dart';
import 'package:car_dispatcher_flutter_edu/design/dimensions.dart';
import 'package:car_dispatcher_flutter_edu/design/images.dart';
import 'package:flutter/material.dart';

class VehicleItem extends StatelessWidget {
  const VehicleItem({super.key});

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
          onTap: () {},
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
              style: TextStyle(
                  color: secondaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: mediumFontSize),
            ),
            if (false) // ToDo
              const Text(
                "No driver",
                style: TextStyle(
                  color: secondaryVariantColor,
                ),
              )
            else
              RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: const TextSpan(
                      style: TextStyle(fontSize: mediumFontSize),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Driver: ",
                          style: TextStyle(
                            color: secondaryVariantColor,
                          ),
                        ),
                        TextSpan(
                          text: "Konstantin",
                          style: TextStyle(
                              color: secondaryColor,
                              fontWeight: FontWeight.w600),
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
            style: TextStyle(
                color: secondaryVariantColor, fontSize: smallFontSize),
            "load",
          )
        ],
      ),
    );
  }
}
