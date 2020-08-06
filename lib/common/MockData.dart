class MockData {
  static Future<List<String>> getTravelRecord(int page, int size) async {
    await Future.delayed(Duration(seconds: 2));

    var list = List<String>();

    for (int i = 1; i <= 55; i++) {
      list.add("天津站-$i");
    }

    if (page * size > list.length) {
      return List();
    }

    // 最后一个
    var end = page * size + size;
    if (end > list.length) {
      end = list.length;
    }

    return list.sublist(page * size, end);
  }
}
