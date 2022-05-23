// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import './../test/step/the_app_is_running.dart';
import './../test/step/i_see_text.dart';
import './../test/step/i_dont_see_text.dart';
import './../test/step/i_tap_icon.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('''Counter''', () {
    testWidgets('''Initial counter value is 0''', (tester) async {
      await theAppIsRunning(tester);
      await iSeeText(tester, '0');
      await iDontSeeText(tester, '1');
    });
    testWidgets('''Plus button increases the counter''', (tester) async {
      await theAppIsRunning(tester);
      await iTapIcon(tester, Icons.add);
      await iSeeText(tester, '1');
    });
    testWidgets('''Minus button decreases the counter''', (tester) async {
      await theAppIsRunning(tester);
      await iTapIcon(tester, Icons.remove);
      await iSeeText(tester, '-1');
    });
    testWidgets('''Reset button resets the counter''', (tester) async {
      await theAppIsRunning(tester);
      await iTapIcon(tester, Icons.add);
      await iSeeText(tester, '1');
      await iTapIcon(tester, Icons.lock_reset);
      await iSeeText(tester, '0');
    });
  });
}
