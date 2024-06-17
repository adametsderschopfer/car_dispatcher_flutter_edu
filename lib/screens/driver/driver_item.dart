import 'package:car_dispatcher_flutter_edu/design/colors.dart';
import 'package:car_dispatcher_flutter_edu/design/images.dart';
import 'package:car_dispatcher_flutter_edu/design/style.dart';
import 'package:flutter/material.dart';

class DriverItem extends StatelessWidget {
  final String driverName;
  final bool isSelected;
  final Function() onTap;

  const DriverItem(
      {super.key,
      required this.onTap,
      required this.driverName,
      required this.isSelected});

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
                children: <Widget>[
                  accountCircleImage,
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      driverName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: body2TextStyle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  if (isSelected) checkImage
                ],
              )),
        ),
      ),
    );
  }
}
