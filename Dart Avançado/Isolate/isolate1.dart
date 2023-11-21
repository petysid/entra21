import 'dart:io';
import 'dart:isolate';

void main(List<String> args) async {
 final strData = await _readInBackground();
 print('Faz o LL: $strData');
}

Future<String> _readInBackground() async {
 final p = ReceivePort();
 Isolate.spawn(_readFile, p.sendPort);
 return await p.first as String;
}
Future<void> _readFile(SendPort p) async {
 final fileData = await File('C:/Users/peterson.sidral/Documents/name.txt').readAsString();
 Isolate.exit(p, fileData);
}