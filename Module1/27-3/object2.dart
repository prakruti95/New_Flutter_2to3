class Student
{
     int id=0;
     String name="";
     String surname="";
     String email="";
     String pass="";

    display()
    {
        print("$id, $name ,$surname , $email , $pass");

    }

}
void main()
{
    Student s1 = Student();
    Student s2 = Student();
    Student s3 = Student();
    Student s4 = Student();
    Student s5 = Student();

    s1.id=101;
    s1.name="jay";
    s1.surname="der";
    s1.email="j@gmail.com";
    s1.pass="1";

    s2.id=102;
    s2.name="riddhita";
    s2.surname="gosai";
    s2.email="r@gmail.com";
    s2.pass="2";

    s3.id=103;
    s3.name="Mansi";
    s3.surname="raval";
    s3.email="m@gmail.com";
    s3.pass="3";

    //print value from object
    // print("${s1.id} and ${s1.name} and ${s1.surname} and ${s1.email} and ${s1.pass}");
    // print("${s2.id} and ${s2.name} and ${s2.surname} and ${s2.email} and ${s2.pass}");
    // print("${s3.id} and ${s3.name} and ${s3.surname} and ${s3.email} and ${s3.pass}");
    s1.display();
    s2.display();
    s3.display();


}