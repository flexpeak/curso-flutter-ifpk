import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AppBarTwitter extends StatelessWidget with PreferredSizeWidget {
  const AppBarTwitter({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      leading: Row(
        children: [
          const SizedBox(width: 20),
          Builder(
            builder: (context) {
              return InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: const Image(
                  image: AssetImage('assets/images/user.png'),
                  width: 40,
                ),
              );
            }
          ),
        ],
      ),
      leadingWidth: 60,
      title: const Center(
        child: Image(
          image: AssetImage('assets/images/twitter-logo.png'),
          height: 30,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Ionicons.sparkles_outline),
        ),
        const SizedBox(width: 15)
      ],
    );
  }
}