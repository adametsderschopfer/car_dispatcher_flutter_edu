import 'package:car_dispatcher_flutter_edu/screens/vehicle/vehicle_item.dart';
import 'package:flutter/cupertino.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[_list(), _updateButton()],
    );
  }

  Widget _list() {
    return ListView.separated(
        itemCount: 15,
        padding: const EdgeInsets.only(
            left: 16, top: 16, right: 16, bottom: 32 // todo Change
            ),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 8),
        itemBuilder: (BuildContext context, int index) => const VehicleItem());
  }

  Widget _updateButton() {
    return Container();
  }
}
