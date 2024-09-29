import 'package:flutter/material.dart';
import 'package:shop_sync/common/widgets/custom_shapes/circular_container.dart';
import 'package:shop_sync/utils/helpers/helper_functions.dart';


class MyChoiceChip extends StatelessWidget {
  const MyChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
    this.borderSide = false,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  final bool borderSide;

  @override
  Widget build(BuildContext context) {
    final isColor = MyHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        selectedColor: Colors.blueGrey,
        side: borderSide ? BorderSide.none: const BorderSide(color: Colors
            .blueGrey),
        label: isColor ? const SizedBox() :  Text(text),
        selected: selected,
        onSelected: onSelected,

        labelStyle:  TextStyle(color: selected ? Colors.white : null),
        avatar: isColor
            ? MyCircularContainer(
            height: 50, width: 50, backgroundColor: MyHelperFunctions.getColor(text)!)
            : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? MyHelperFunctions.getColor(text)! : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
      ),
    );
  }
}
