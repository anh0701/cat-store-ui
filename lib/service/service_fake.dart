import 'package:cat_store_ui/service/data_fake.dart';

Future<Map<String, dynamic>?>? getUser(Map<String, dynamic> data){
  for (int i = 0; i < users['result'].length; i++) {
    if(data['username'] == users['result'][i]['username'] && data['password'] == users['result'][i]['password']) {
      print(users['result'][i]);
      return Future.value(data);
    }   
  }
  print(users['result'].length);
  print("False");
  return null;
}

Future<Map<String, dynamic>?>? addUser(Map<String, dynamic> data){
  for (int i = 0; i < users['result'].length; i++) {
    if(data['username'] == users['result'][i]['username']) {
      return null;
    }   
    users.addAll(data);
      print(users['result'].length);
      return Future.value(data);
  }
}