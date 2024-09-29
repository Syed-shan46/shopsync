import 'package:flutter/material.dart';
import 'package:shop_sync/common/widgets/custom_shapes/primary_header_container.dart';
import 'package:shop_sync/utils/constants/sizes.dart';

class MyAuthHeader extends StatelessWidget {
  const MyAuthHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return MyPrimaryHeaderContainer(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 29,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ]),
    );
  }
}
