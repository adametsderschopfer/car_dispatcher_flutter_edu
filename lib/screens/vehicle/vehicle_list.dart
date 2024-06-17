import 'package:car_dispatcher_flutter_edu/design/widgets/accent_button.dart';
import 'package:car_dispatcher_flutter_edu/screens/vehicle/vehicle_item.dart';
import 'package:flutter/cupertino.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _list(context),
        Align(alignment: Alignment.bottomCenter, child: _updateButton())
      ],
    );
  }

  Widget _list(BuildContext context) {
    final safeBottomPadding = MediaQuery.of(context).padding.bottom;
    final bottomPadding = (safeBottomPadding + 8) * 2 + 40;

    return ListView.separated(
        itemCount: 15,
        padding: EdgeInsets.only(
            left: 16, top: 16, right: 16, bottom: bottomPadding // todo Change
            ),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 8),
        itemBuilder: (BuildContext context, int index) => const VehicleItem());
  }

  Widget _updateButton() {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
      child: AccentButton(title: "Update", onTap: () {}),
    ));
  }
}
