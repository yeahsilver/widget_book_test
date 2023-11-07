import 'package:flutter/material.dart';
import 'package:widget_book_test/main.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
    name: "width green color",
    type: Container,
    designLink: '[widgets]/container')
Widget greenContainerUseCase(BuildContext context) {
  return const MainContainer(
    color: Colors.green,
  );
}

@widgetbook.UseCase(
  name: 'with blue color',
  type: Container,
  designLink: '[widget]/containers',
)
Widget getContainer(BuildContext context) {
  return const MainContainer(
    color: Colors.blue,
  );
}
