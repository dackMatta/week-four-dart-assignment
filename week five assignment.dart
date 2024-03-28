//first class
class Student {
  // Properties
  String name;
  int age;
  String grade_level;

  // Constructor
  Student(this.name, this.age,this.grade_level);

  // Method to display information
  void studentInfo() {
    print('Hello, my name is $name, i am $age years old and i am in Software Development grade level $grade_level');
  }
}

// second class
class Teacher {
  // Properties
  String name;
  int age;
  String subject_name;

  // Constructor
  Teacher(this.name, this.age, this.subject_name);

  // Method to display information 
  void displayInfo() {
    print(' My instructors name is ,$name, i presume he is  $age years old and  teach $subject_name');
  }
}
class School {
  // Method to create student and teacher objects and call their respective methods
  void mySchoolInfo() {
    // instance of the Student class
    var student = Student('Entrix Makambi', 23, 'A');

    // instance of the Teacher class
    var teacher = Teacher('Eric Murithii', 28, 'Python');
    
    // Display information about the student
    student.studentInfo();

    // Display information about the teacher
    teacher.displayInfo();
  }
}void main() {
  // instance of the School class
  var school = School();

  // Call the method to print information about student and teacher
  school.mySchoolInfo();
}
