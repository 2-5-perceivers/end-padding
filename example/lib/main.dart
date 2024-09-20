import 'package:end_padding/end_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
  // Enable Edge to Edge mode
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        // Enable Edge to Edge mode
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
        return child!;
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text('End Padding Example'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (var i = 0; i < 25; i++)
                ListTile(
                  title: Text('Item $i'),
                ),
              // Inside a colored box to see the padding
              const ColoredBox(
                color: Colors.red,
                child: EndPadding(
                  useFloating: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
