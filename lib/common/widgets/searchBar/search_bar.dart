import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key, this.showFilterIcon = true,
  });

  final bool showFilterIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Padding(
            padding: const EdgeInsets.only(left: 18),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'Search ',
                fillColor: Colors.blue.withOpacity(0.1),
                prefixIcon: Icon(CupertinoIcons.search,
                    color: Theme.of(context).colorScheme.primaryFixed),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),

        /// Filter icon
       showFilterIcon ? SizedBox(
          width: 48,
          height: 48,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:Colors.blue.withOpacity(0.1)),
            child: const Icon(Icons.sort),
          ),
        ) : const SizedBox()
      ],
    );
  }
}
