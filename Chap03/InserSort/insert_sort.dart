import 'dart:io';

class ArrayInsert {
  List<int> a;
  int nElems;

  ArrayInsert(int max) {
    a = new List<int>(max);
    nElems = 0;
  }

  void insert(int value) {
    a[nElems] = value;
    nElems ++;
  }

  void display() {
    for(int i = 0; i < nElems; i++)
      stdout.write('${a[i]} ');
    stdout.writeln();
  }

  void insertSort() {
    int _in, out;
    for(out = 0; out < nElems; out ++) {
      int temp = a[out];
      _in = out;
      while(_in > 0 && a[_in - 1] >= temp) {
        a[_in] = a[_in - 1];
        _in --;
      }
      a[_in] = temp;
    }
  }
}

main() {
  int maxSize = 100;
  ArrayInsert array = new ArrayInsert(maxSize);

  // Insert 10 items
  array.insert(77);
  array.insert(99);
  array.insert(44);
  array.insert(55);
  array.insert(22);
  array.insert(88);
  array.insert(11);
  array.insert(00);
  array.insert(66);
  array.insert(33);

  array.display();

  array.insertSort();

  array.display();
}
