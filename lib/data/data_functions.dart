import 'dart:math';

int getIndex(List list) {
  int index = Random().nextInt(list.length);
  return index;
}

String getData(List list) {
  String element = list.elementAt(getIndex(list));
  return element;
}
