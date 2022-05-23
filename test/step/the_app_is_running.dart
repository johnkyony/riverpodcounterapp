import 'package:flutter_test/flutter_test.dart';
import 'package:counterappriverpodexample/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  await tester.pumpWidget(const ProviderScope(child: MyApp()));
}
