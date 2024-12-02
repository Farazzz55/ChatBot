import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class Pref{
  static late Box box;
  static void initalizeHive()async{
    Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
    box=Hive.box(name: 'myData');
  }
  static bool get ShowOnBoarding=> box.get('showOnBoarding',defaultValue: true);
  static set ShowOnBoarding(bool v)=>box.put('showOnBoarding', v);

}