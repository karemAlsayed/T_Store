import 'package:flutter/material.dart';
import 'package:store_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:store_app/utils/constants/colors.dart';
import 'package:store_app/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final ValueChanged<bool>? onSelected;

  @override
  Widget build(BuildContext context) {
    final iscolor = THelperFunctions.getColor(text)!=null;
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.transparent
      ),
      child: ChoiceChip(
        label: iscolor ? const SizedBox() :  Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(
          color: selected ? TColors.white : null,
        ),
        shape:iscolor? const CircleBorder():null,
        backgroundColor: iscolor ? THelperFunctions.getColor(text) :null,
        labelPadding:iscolor? const EdgeInsets.all(0):null,
        padding: iscolor ? const EdgeInsets.all(0):null,
      
        
        avatar: iscolor
            ?  TCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: THelperFunctions.getColor(text), 
              )
            : null,
      ),
    );
  }
}
