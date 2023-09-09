import 'package:fake_store_assignment_3/imports.dart';

class SmallAppIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextBuilder(
        text: 'FAKE',
        color: Constraints.APP_BAR_HOME_TEXT1_COLOR,
        fontSize: 20.0,
      ),
      TextBuilder(
        text: 'STORE',
        color: Constraints.APP_BAR_HOME_TEXT2_COLOR,
        fontSize: 20.0,
      ),
    ]);
  }
}
