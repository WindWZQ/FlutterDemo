class LogUtil {
  static const bool _DEBUG = true;

  static void i(Object object, {String tag}) {
    if (_DEBUG) {
      _printLog(tag, object);
    }
  }

  static void _printLog(String tag, Object object) {
    StringBuffer sb = new StringBuffer();
    sb.write((tag == null || tag.isEmpty) ? "" : tag);
    sb.write(object);
    sb.write(" ");
    print(sb.toString());
  }
}
