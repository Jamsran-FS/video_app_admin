import 'dart:developer';

class Logger {
  static void s(String msg) {
    log(msg, name: 'SUCCESS'); // green foreground
  }
  static void i(String msg) {
    log(msg, name: 'INFO'); // blue foreground
  }
  static void w(String msg) {
    log(msg, name: 'WARNING'); // yellow foreground
  }
  static void e(String msg) {
    log(msg, name: 'ERROR'); // red foreground
  }
  static void d(String msg) {
    log(msg, name: 'DEBUG'); // white foreground
  }
  static void r(String msg) {
    log(msg, name: 'DELETED'); // red foreground
  }
}