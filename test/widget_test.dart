import 'package:checkpoint/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('a tela inicial mostra o título Minhas visitas', (tester) async {
    await tester.pumpWidget(const CheckpointApp());

    expect(find.text('Minhas visitas'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
