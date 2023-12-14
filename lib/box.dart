import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String? text;
  const Box({super.key, required this.text, required this.onPressed});

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [Colors.lightBlueAccent, Colors.lightBlue, Colors.blue, Colors.blueAccent],
            )),
        child: Text(
          text!,///OPERATOR ! DUPA "text" INSEAMNA CA SIGUR NU VA FI NULL. OPERATORUL ?? AR INSEMNA "TERNARY OPERATOR IF TEXT IS NULL"
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
