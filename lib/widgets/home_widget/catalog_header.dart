import 'package:flutter/material.dart';
import 'package:flutter_application_2/Models/Item.dart';
import 'package:flutter_application_2/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class Catalogheader extends StatelessWidget {
  const Catalogheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App"
            .text
            .xl5
            .bold
            .color(Theme.of(context).colorScheme.onPrimary)
            .make(),
        "Trending products"
            .text
            .color(Theme.of(context).colorScheme.onPrimary)
            .xl2
            .make()
      ],
    );
  }
}
