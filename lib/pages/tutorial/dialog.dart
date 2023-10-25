import 'package:flutter/material.dart';

class DialogWidget extends StatefulWidget {
  const DialogWidget({super.key});

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  String content = "no input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dialog")),
      body: Center(
        child: Text(content),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Dihapus?"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            content = "Ya";
                          });
                          Navigator.of(context).pop(false);
                        },
                        child: Text("Ya")),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            content = "Tidak";
                          });
                          Navigator.of(context).pop(true);
                        },
                        child: Text("Tidak")),
                  ],
                );
              }).then((value) => {print(value)});
        },
        child: const Icon(Icons.delete),
      ),
    );
  }
}
