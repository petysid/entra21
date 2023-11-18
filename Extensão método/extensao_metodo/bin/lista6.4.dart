import 'package:intl/intl.dart';

class Util {
  static DateFormat df = DateFormat('dd/MM/yyyy HH:mm:ss');

  static String convertData(DateTime dt){
    return df.format(dt);
  }
}

void main(){
  final agora = DateTime.now();

  String agoraEmString = Util.convertData(agora);
  print(agoraEmString);
}