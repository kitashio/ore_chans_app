import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlertDialogComponent extends ConsumerWidget {
  const AlertDialogComponent(this.title, this.content, this.onTap, {Key? key}) : super(key: key);

  final String title;
  final String content;
  final void Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        GestureDetector(
          child: const Text('いいえ'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        GestureDetector(
          child: Text('はい'),
          onTap: onTap,
        )
      ],
    );
  }
}