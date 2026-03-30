class Student
{
    int id=0;
    String name="";


    Student(var id,var name)
    {
        this.id = id;
        this.name = name;

    }

    void display()
    {
        print("$id ,$name");
    }
}
void main()
{
    Student s1 = Student(101,"jay");
    Student s2 = Student(102,"riddhita");
    Student s3 = Student(103,"mansi");

    s1.display();
    s2.display();
    s3.display();



}