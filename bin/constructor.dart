// with constructor

class Student_const {
  String? name;
  String? branch;
  int? age;
  int? rno;

//Student_const("Shahin"   , "CSE"        , 20     , 50)
  Student_const(String name, String branch, int age, int rno) {
    this.name = name;
    this.branch = branch;
    this.age = age;
    this.rno = rno;
  }

  void display() {
    print(
        "With Constructor\nStudent Details\nName:$name\nBranch\n$branch\nAge:$age\nRoll No:$rno");
  }
}

//without constructor

class Student_ {
  String? name;
  String? branch;
  int? age;
  int? rno;
}

void main() {
  //without constructor
  Student_ s1 = Student_();
  s1.name = 'Hari';
  s1.branch = 'CSE';
  s1.age = 22;
  s1.rno = 32;

  print(
      "Without Constructor\nStudent Details\nName:${s1.name}\nBranch\n${s1.branch}\nAge:${s1.age}\nRoll No:${s1.rno}\n");

  // with constructor
  Student_const const_s1 = Student_const("Shahin", "CSE", 20, 50);
  const_s1.display();
}
