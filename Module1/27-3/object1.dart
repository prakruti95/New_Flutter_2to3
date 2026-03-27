class Student
{
    //data member
  //int id=0;
  //String name=""
  //var id;
  //var name;
   late int id;
    late String name;
}
void main()
{
    //object creation
    var s1 = Student();
    Student s2 = Student();
    Student s3 = Student();

    //object value assign
    s1.id=101;
    s1.name="jay";

    s2.id=102;
    s2.name="riddhita";

    s3.id=103;
    s3.name="Mansi";

    //print value from object
    print("${s1.id},${s1.name}");
    print("${s2.id},${s2.name}");
    print("${s3.id},${s3.name}");

}