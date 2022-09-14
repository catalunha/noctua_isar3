import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:noctua_isar/app/view/controllers/people/people_controller.dart';

class PeoplePage extends StatelessWidget {
  final PeopleController peopleController = Get.find();
  PeoplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('People ${peopleController.peopleList.length}')),
      ),
      body: Obx(() => SingleChildScrollView(
            child: Center(
              child: Column(
                children: buildPeople(context),
              ),
            ),
          )),
    );
  }

  List<Widget> buildPeople(context) {
    final DateFormat formatter = DateFormat('dd/MM/yyyy hh:mm');

    List<Widget> list = [];
    for (var e in peopleController.peopleList) {
      list.add(Card(
        child: Row(
          children: [
            e.photoByte != null && e.photoByte!.isNotEmpty
                ? Image.memory(
                    Uint8List.fromList(e.photoByte!),
                    width: 75,
                    height: 75,
                    // fit: BoxFit.contain,
                  )
                : const Text('...'),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nome: ${e.name}'),
                  Text('Alias: ${e.alias?.join(",")}'),
                  Text('Mae: ${e.mother}'),
                  Text('CPF: ${e.cpf}'),
                  Text('Marcas: ${e.marks}'),
                  Text('DataNasc: ${e.birthday}'),
                  Text(
                      'DataNasc: ${e.birthday != null ? formatter.format(e.birthday!) : "..."}'),
                ],
              ),
            ),
          ],
        ),
      ));
      // list.add(
      //   ListTile(
      //     // leading: e.photoUrl != null && e.photoUrl!.isNotEmpty
      //     //     ? ClipRRect(
      //     //         borderRadius: BorderRadius.circular(8.0),
      //     //         child: Image.network(
      //     //           e.photoUrl!,
      //     //           height: 58,
      //     //           width: 58,
      //     //         ),
      //     //       )
      //     //     : const SizedBox(
      //     //         height: 58, width: 58, child: Icon(Icons.warning)),
      //     leading: e.photoByte != null && e.photoByte!.isNotEmpty
      //         ? Image.memory(
      //             Uint8List.fromList(e.photoByte!),
      //             // width: 250,
      //             // height: 250,
      //             // fit: BoxFit.contain,
      //           )
      //         : const Text('...'),
      //     // trailing: e.photoByte != null && e.photoByte!.isNotEmpty
      //     //     ? Image.memory(
      //     //         Uint8List.fromList(e.photoByte!),
      //     //         width: 250,
      //     //         height: 250,
      //     //         fit: BoxFit.contain,
      //     //       )
      //     //     : const Text('...'),
      //     title: Text(
      //       '${e.name}',
      //     ),
      //     subtitle: Text(
      //       '${e.id}',
      //     ),
      //   ),
      // );
    }
    return list;
  }
}
