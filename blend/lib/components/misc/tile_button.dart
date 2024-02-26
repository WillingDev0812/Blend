import 'package:flutter/material.dart';
import 'package:blend/global_provider.dart';
import 'package:provider/provider.dart';

class TileButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  const TileButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GlobalProvider>(context);

    return Container(
      child: Column(
        children: [
          Divider(
            color: provider.theme.dividerColor,
            thickness: 1,
          ),
          // account linking
          ListTile(
            title: Text(title),
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
