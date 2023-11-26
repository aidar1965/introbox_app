import 'package:flutter/material.dart';

class CommonElevatedButton extends StatelessWidget {
  const CommonElevatedButton(
      {super.key,
      required this.text,
      this.isPending = false,
      required this.onPressed});

  final String text;
  final bool isPending;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isPending) ...[
            const SizedBox(
                height: 12,
                width: 12,
                child: CircularProgressIndicator(
                  color: Colors.white,
                )),
            const SizedBox(
              width: 12,
            )
          ],
          Text(text),
        ],
      ),
    );
  }
}
