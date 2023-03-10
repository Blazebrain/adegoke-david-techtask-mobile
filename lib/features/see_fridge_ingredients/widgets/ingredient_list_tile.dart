import 'package:flutter/material.dart';

import '../../../base/view_base_classes/style/style.dart';
import '../../../base/view_base_classes/widgets/simple_text.dart';
import '../models/ingredient_model.dart';

class IngredientListTile extends StatelessWidget {
  final IngredientModel ingredient;
  final bool selected;
  final Function(IngredientModel ingredient)? onTap;

  const IngredientListTile({
    Key? key,
    required this.ingredient,
    required this.selected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap!(ingredient),
      child: Container(
        height: 56,
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        decoration: BoxDecoration(
            color: backgroundWhiteColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: selected ? darkGreenColor : strokeBrownColor,
              width: selected ? 1 : 0.5,
            )),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SimpleText(
                  '${ingredient.name}',
                  size: 20,
                  color: const Color(0xFF141516),
                  weight: FontWeight.w300,
                ),
              ),
            ),
            if (selected)
              const Icon(
                Icons.check,
                color: darkGreenColor,
                size: 24,
              )
          ],
        ),
      ),
    );
  }
}
