import 'package:get_storage/get_storage.dart';

class getsttorage {
 static final _storage = GetStorage();
 static const _key = 'key';

 static bool is_first_time_login() {
    return _storage.read(_key) ?? true;

  }
  
static  void set_first_time_login(bool value) {
    _storage.write(_key, value);
  }

}
