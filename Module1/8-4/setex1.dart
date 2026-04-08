void main()
{

  Set data = Set();

  data.add("Jay");
  data.add("Mansi");
  data.add("Riddhita");
  //data.add("Jay XYZ");

  print(data);

  for(var name in data)
  {
    print(name);
  }


}