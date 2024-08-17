import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_global_data_manage/model_info.dart';
import 'package:provider_global_data_manage/provider_global.dart';

class NextDataScreen extends StatelessWidget {
  const NextDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Using watch to listen for changes in ProviderGlobal
    final provider = context.watch<ProviderGlobal>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Data Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Number: ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${provider.getValue()}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              "Student List:",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: provider.getStudentList().length,
                itemBuilder: (context, index) {
                  final student = provider.getStudentList()[index];
                  return ListTile(
                    title: Text("Name: ${student.name}"),
                    subtitle: Text("UID: ${student.uid}"),

                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(onPressed: (){
                            provider.deleteData(index: index);
                          }, icon: Icon(Icons.delete)) ,
                          IconButton(onPressed: (){
                            provider.updateData(updateData: ModelInfo(name: "Update", uid: "UpdateData"), index: index) ;
                          }, icon: Icon(Icons.edit)) ,
                        ],
                      ),
                    ),
                  );
                },
                ),
            ),
          ],
        ),
      ),
    );
  }
}
