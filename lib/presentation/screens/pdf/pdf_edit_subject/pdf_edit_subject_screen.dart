import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PdfEditSubjectScreen extends StatelessWidget {
  const PdfEditSubjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Edit PDF'),
    );
  }
}
