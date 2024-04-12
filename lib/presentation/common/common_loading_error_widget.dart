import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introbox/presentation/common/common_elevated_button.dart';

import '../../generated/locale_keys.g.dart';

class CommonLoadingErrorWidget extends StatelessWidget {
  const CommonLoadingErrorWidget({super.key, required this.onPressed});

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                LocaleKeys.commonLoadingError.tr(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              CommonElevatedButton(
                text: LocaleKeys.buttonRepeat.tr(),
                onPressed: onPressed,
              )
            ],
          ),
        ),
      ),
    );
  }
}
