import 'package:get/get.dart';
import 'package:is_first_run/is_first_run.dart';

class Utils {
  // Check if the internet connected
  static RxBool isInternetConnected = false.obs;

  // Check if user was logged in
  static Future<RxBool> get isLoggedIn async =>
      (await IsFirstRun.isFirstRun() ? false : !await IsFirstRun.isFirstCall())
          .obs;
}
