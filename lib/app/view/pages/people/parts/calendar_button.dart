import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:noctua_isar/app/view/controllers/people/people_controller.dart';

class CalendarButton extends StatelessWidget {
  final PeopleController _personController = Get.find();
  final dateFormat = DateFormat('dd/MM/y');

  CalendarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        var initialDate = _personController.selectedDate ?? DateTime.now();
        final DateTime? selectedDate = await showDatePicker(
          context: context,
          initialDate: initialDate,
          firstDate: DateTime(DateTime.now().year),
          lastDate: DateTime(DateTime.now().year + 1),
        );
        _personController.selectedDate = selectedDate;
      },
      // borderRadius: BorderRadius.circular(10.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.today,
              color: Colors.grey,
            ),
            const SizedBox(width: 10),
            Obx(
              () {
                if (_personController.selectedDate != null) {
                  return Text(
                      'Data:  ${dateFormat.format(_personController.selectedDate!)}');
                } else {
                  return const Text('Selecione uma data');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
