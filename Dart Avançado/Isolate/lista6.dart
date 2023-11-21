import 'dart:io';
import 'dart:isolate';
import 'package:async/async.dart';

void main(List<String> args) async {

  int contador = 0;
  bool contando = true;
  _stopCounter().then((value) => contando = false);
  while(contando){
    print('contador=$contador');
    await Future.delayed(Duration(seconds: 1));
  }
}

Future<void> _stopCounter() async {
 final p = ReceivePort();
 Isolate.spawn(_readFile, p.sendPort);
 await p.first;
}

Future<void> _readFile(SendPort p) async {
 stdin.readLineSync()!;
 Isolate.exit(p);
}
