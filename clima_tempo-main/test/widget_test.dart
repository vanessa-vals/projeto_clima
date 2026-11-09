// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:clima_tempo/main.dart';

void main() {
  testWidgets('abre clima e previsão da cidade selecionada', (tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text('Clima'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('São Paulo'));
    await tester.pumpAndSettle();

    expect(find.text('Condição do tempo'), findsOneWidget);
    expect(find.text('Chuva forte'), findsOneWidget);

    final previsaoLink = find.byKey(const ValueKey('weeklyForecast'));
    await tester.drag(find.byType(ListView).last, const Offset(0, -500));
    await tester.pumpAndSettle();
    await tester.ensureVisible(previsaoLink);
    await tester.tap(previsaoLink);
    await tester.pumpAndSettle();

    expect(find.text('Previsão - São Paulo'), findsOneWidget);
    expect(find.text('Quarta'), findsOneWidget);
  });
}
