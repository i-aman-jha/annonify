import 'package:annonify/config/Theme/colors.dart';
import 'package:flutter/material.dart';

class FileTile extends StatelessWidget {
  final String title;
  final String? subTitle;
  final bool link;

  const FileTile({
    super.key,
    required this.title,
    this.subTitle,
    this.link = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 36,
        width: 36,
        decoration: const BoxDecoration(
          color: ThemeColors.secondaryTextColor,
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        child: (link)
            ? const Icon(
                Icons.link,
                color: ThemeColors.selectedColor,
              )
            : const Icon(
                Icons.folder_open,
                color: ThemeColors.selectedColor,
              ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: (subTitle != null)
          ? Text(
              subTitle!,
              style: Theme.of(context).textTheme.bodySmall,
            )
          : null,
    );
  }
}
