import 'package:flutter/material.dart';
import 'package:widget_book_test/main.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: "width green color",
  type: Container,
)
Widget greenContainerUseCase(BuildContext context) {
  return const MainContainer();
}
