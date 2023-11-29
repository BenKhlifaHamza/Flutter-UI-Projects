import 'package:flutter/material.dart';

class GoToPageButton extends StatelessWidget {
  final String text;
  final String pageName;
  const GoToPageButton({
    super.key,
    required this.text,
    required this.pageName,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      color: Colors.indigoAccent,
      textColor: Colors.white,
      elevation: 12,
      padding: const EdgeInsets.symmetric(vertical: 10),
      onPressed: () {
        Navigator.of(context).pushNamed(pageName);
      },
      child: Text(text),
    );
  }
}
