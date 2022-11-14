import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  DefaultAppBar(this.trailing, this.onPressed, {super.key});
  Icon? trailing;
  dynamic onPressed;
  Widget getTrailingIcon() {
    if (trailing != null) {
      return Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: IconButton(
          icon: trailing!,
          onPressed: onPressed,
        ),
      );
    } else {
      return Container();
    }
  }

  @override
  PreferredSize build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size(double.infinity, 82),
        child: AppBar(
          centerTitle: true,
          title: const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Image(
              height: 40,
              width: 52,
              image: Svg('images/Group 31.svg'),
            ),
          ),
          actions: [getTrailingIcon()],
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
