import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 90,
          height: 120,
          decoration: const BoxDecoration(
            color: Color(0xFF000000),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          margin: const EdgeInsets.only(right: 16),
        ),
        const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                bottom: 6,
              ),
              child: Text(
                "Título do filme!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              "Lançamento: 2014-04-04",
              style: TextStyle(
                color: Color(0xFFA5A5A5),
              ),
            ),
          ],
        )
      ],
    );
  }
}
