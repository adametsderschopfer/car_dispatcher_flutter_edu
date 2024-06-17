import 'package:car_dispatcher_flutter_edu/design/dialog/error_dialog.dart';
import 'package:car_dispatcher_flutter_edu/design/utils/size_utils.dart';
import 'package:car_dispatcher_flutter_edu/design/widgets/accent_button.dart';
import 'package:car_dispatcher_flutter_edu/screens/driver/driver_page.dart';
import 'package:car_dispatcher_flutter_edu/screens/vehicle/vehicle_item.dart';
import 'package:flutter/material.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _list(context),
        Align(alignment: Alignment.bottomCenter, child: _updateButton(context))
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
        itemBuilder: (BuildContext context, int index) => VehicleItem(
              onTap: () async {
                await _showDriverPage(context);
              },
            ));
  }

  Widget _updateButton(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
      child: AccentButton(
          title: "Update",
          onTap: () {
            _showErrorDialog(context);
          }),
    ));
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const ErrorDialog(
              description: "Server is unavailable. Please try again later.");
        });
  }

  Future<void> _showDriverPage(BuildContext context) async {
    await Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return const DriverPage();
    }));
  }
}
