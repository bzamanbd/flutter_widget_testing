import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widget_testing/home_screen.dart';

void main() {
  testWidgets(
      'GIVEN HomeScreen the value of the count widget is 0 WHEN the increment button is tapped THEN the value of the count widget is 1',
      (WidgetTester tester) async {
    //Build our app and trigger a frame
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

    //Verify that there is an appbar
    expect(find.byType(AppBar), findsOneWidget);

    //Verify that the counter start with 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    //Tap the increment button and trigger a frame
    await tester.tap(find.byKey(const Key('incButton')));
    await tester.pump(); //to rebuild the ui//

    //Verify the counter has incremented
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
