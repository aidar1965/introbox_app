import 'package:flutter/material.dart';
import 'package:introbox/domain/models/fragment_category.dart';

class AddCategoryForm extends StatelessWidget {
  const AddCategoryForm({Key? key, this.category}) : super(key: key);

  final FragmentCategory? category;

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    if (category != null) {
      controller.text = category!.name;
    }
    return SizedBox(
      height: 200,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Text(category != null ? 'Редактировать' : 'Новая категория'),
                TextField(
                  controller: controller,
                  decoration:
                      const InputDecoration(hintText: 'Название категории'),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Отмена')),
              const SizedBox(
                width: 40,
              ),
              ElevatedButton(
                  onPressed: () => Navigator.of(context)
                      .pop({'action': 'edit', 'name': controller.text}),
                  child: const Text('Добавить')),
            ],
          ),
          category != null
              ? Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                      onPressed: () async {
                        final navigator = Navigator.of(context);
                        bool deleteConfirmed =
                            await _showAlertDialog(context, category!) as bool;
                        if (deleteConfirmed) {
                          navigator.pop({'action': 'delete', 'name': ''});
                        } else {
                          navigator.pop();
                        }
                      },
                      child: const Text('Удалить')))
              : const SizedBox()
        ],
      ),
    );
  }

  Future<bool?> _showAlertDialog(
      BuildContext context, FragmentCategory category) async {
    return showDialog<bool>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Удалить категорию?'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text(
                    'При удалении категории записи, относящиеся к этой категории не удаляются.'),
                Text('Продолжить?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Отмена'),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
            TextButton(
              child: const Text('Удалить'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  }
}
