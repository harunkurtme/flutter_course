import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final imageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQg1Iu__YUzKCrmCV4icemyuBR65pLDIseAU5Zl9e5B&s";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Image.network(imageUrl),
                subtitle: Text("sbutilte"),
                leading: Container(
                  child: Icon(Icons.money),
                  height: 200,
                  width: 30,
                  alignment: Alignment.topCenter,
                  color: Colors.red,
                  ),
                trailing: Icon(Icons.chevron_right),
                onTap: (){},
              ),
            ),
          )
        ],
      ),
    );
  }
}