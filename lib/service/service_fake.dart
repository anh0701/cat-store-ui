import 'package:cat_store_ui/service/data_fake.dart';

Future<Map<String, dynamic>?>? callApiFake(Map<String, dynamic> data){
  if(data['username'] == users['result'][0]['username'] && data['password'] == users['result'][0]['password']) {
    return Future.value(data);
  } else {
    return null;
  }
}