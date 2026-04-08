void main()
{

  List<String> data = ["Jay","Riddhita","Mansi"];
  print(data);
  data.add("abhay");
  List<String> data2 = ["Sweni","Diya","Aayush","Jay"];
  data.addAll(data2);
  data.remove("Sweni");
  data.removeAt(1);

  for(var name in data)
  {
    print(name);
  }

}