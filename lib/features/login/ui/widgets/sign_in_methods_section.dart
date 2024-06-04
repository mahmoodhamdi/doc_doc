import 'package:doc_doc/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SignInMethodsSection extends StatelessWidget {
  const SignInMethodsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Spacer(),
      Container(
        decoration: BoxDecoration(
            color: ColorsManager.moreLighterGray,
            borderRadius: BorderRadius.circular(100)),
        child: IconButton(
          onPressed: () {},
          icon: const Image(
            height: 46.0,
            width: 46.0,
            image: AssetImage("assets/icons/google-icon.png"),
          ),
        ),
      ),
      const Spacer(),
      Container(
        decoration: BoxDecoration(
            color: ColorsManager.moreLighterGray,
            borderRadius: BorderRadius.circular(100)),
        child: IconButton(
          onPressed: () {},
          icon: const Image(
            height: 46,
            width: 46,
            image: AssetImage("assets/icons/facebook-icon.png"),
          ),
        ),
      ),
      const Spacer(),
      Container(
        decoration: BoxDecoration(
            color: ColorsManager.moreLighterGray,
            borderRadius: BorderRadius.circular(100)),
        child: IconButton(
          onPressed: () {},
          icon: const Image(
            height: 46,
            width: 46,
            image: AssetImage("assets/icons/apple-icon.png"),
          ),
        ),
      ),
      const Spacer(),
    ]);
  }
}
