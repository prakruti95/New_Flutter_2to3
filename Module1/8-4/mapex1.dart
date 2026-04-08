import 'dart:ffi';

void main()
{
  Map<String,String> map = Map();
  var newEntries =
  [
    MapEntry("a", "101"),
    MapEntry("b", "102"),
  ];
  map.addEntries(newEntries);
  print(map);
  print(map.keys);
  print(map.values);

}