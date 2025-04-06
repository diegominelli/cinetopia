import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        padding: const EdgeInsets.symmetric(
          horizontal: 26,
          vertical: 19,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFB370FF),
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Quero começar",
              style: TextStyle(
                color: Color(0XFF1D0E44),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Color(0XFF1D0E44),
            )
          ],
        ),
      ),
    );
  }
}
