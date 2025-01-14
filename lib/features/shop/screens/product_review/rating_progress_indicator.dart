import 'package:flutter/material.dart';

import 'progress_indicator_and_rating.dart';

class rating_progress_indicator extends StatelessWidget {
  const rating_progress_indicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              MyRatingProgressIndicator(text: '5',value: 0.5,),
              MyRatingProgressIndicator(text: '4',value: 0.3,),
              MyRatingProgressIndicator(text: '3',value: 0.4,),
              MyRatingProgressIndicator(text: '2',value: 0.6,),
              MyRatingProgressIndicator(text: '1',value: 0.7,),
            ],
          ),
        )
      ],
    );
  }
}


