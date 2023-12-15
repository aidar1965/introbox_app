import 'package:flutter/cupertino.dart';
import 'package:moki_tutor/presentation/common/common_elevated_button.dart';

class CommonLoadingErrorWidget extends StatelessWidget {
  const CommonLoadingErrorWidget({super.key, required this.onPressed});

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Не удалось загрузить данные. Проверьте Интернет соединение и попробуйте еще раз',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            CommonElevatedButton(
              text: 'Повторить',
              onPressed: onPressed,
            )
          ],
        ),
      ),
    );
  }
}
