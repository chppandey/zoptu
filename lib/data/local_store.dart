import 'package:get_storage/get_storage.dart';

class LocalStore {
  LocalStore._privateConstructor();

/// private instance
  static final LocalStore _instance = LocalStore._privateConstructor();

/// factory constructor 
  factory LocalStore() {
    return _instance;
  }

  final GetStorage storage = GetStorage();

  void setUserToken({String? token}) {
    storage.write("userToken", token);
  }

  void setUsedId({String? userId}) {
    storage.write("userId", userId);
  }

  /// get method

  String getUserToken() {
    return storage.read("userToken");
  }

  String getUserId() {
    return storage.read('userId');
  }
}
