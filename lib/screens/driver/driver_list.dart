import 'package:car_dispatcher_flutter_edu/design/utils/size_utils.dart';
import 'package:car_dispatcher_flutter_edu/design/widgets/accent_button.dart';
import 'package:car_dispatcher_flutter_edu/screens/driver/driver_item.dart';
import 'package:flutter/material.dart';

class DriverList extends StatefulWidget {
  const DriverList({super.key});

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _list(context),
        Align(alignment: Alignment.bottomCenter, child: _saveButton(context))
      ],
    );
  }

  Widget _list(BuildContext context) {
    return ListView.separated(
        itemCount: 15,
        padding: EdgeInsets.only(
            left: 16,
            top: 16,
            right: 16,
            bottom: getListBottomPadding(context)),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 8),
        itemBuilder: (BuildContext context, int index) => DriverItem(
              driverName: "test",
              isSelected: true,
              onTap: () {},
            ));
  }

  Widget _saveButton(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
      child: AccentButton(title: "Save", onTap: () {}),
    ));
  }
}
