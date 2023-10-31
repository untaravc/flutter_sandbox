import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  static const nameRoute = "layout_builder_page";

  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heigthApp = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final myAppBar = AppBar(
      title: Text("Layout Builder"),
    );
    final heightBody = heigthApp - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
      appBar: myAppBar,
      body: Column(
        children: [
          Container(
            width: widthApp,
            height: heightBody * 0.2,
            color: Colors.grey,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerWidget(
                    widthApp: widthApp,
                  ),
                  ContainerWidget(
                    widthApp: widthApp,
                  ),
                  ContainerWidget(
                    widthApp: widthApp,
                  ),
                ]),
          ),
          const CupertinoModal(),
          Center(
            child: ElevatedButton(
              child: Text("Date"),
              onPressed: () {
                return Platform.isIOS
                    ? showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2030))
                    : print("OK");
              },
            ),
          )
        ],
      ),
    );
  }
}

class CupertinoModal extends StatelessWidget {
  const CupertinoModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return Platform.isIOS
                  ? CupertinoAlertDialog(
                      title: Text("Delete Item"),
                      content: Text("Are you sure?"),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('No')),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Yes',
                              style: TextStyle(color: Colors.red),
                            )),
                      ],
                    )
                  : AlertDialog(
                      title: Text("Delete Item"),
                      content: Text("Are you sure?"),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('No')),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Yes',
                              style: TextStyle(color: Colors.red),
                            )),
                      ],
                    );
            });
      },
      child: Text("Cupertino"),
    ));
  }
}

class ContainerWidget extends StatelessWidget {
  final widthApp;
  const ContainerWidget({super.key, required this.widthApp});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: widthApp * 0.2,
          height: constraints.maxHeight * 0.8,
          color: Colors.amber,
        );
      },
    );
  }
}
