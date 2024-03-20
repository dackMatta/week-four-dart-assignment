// An object-oriented model that uses classes and inheritance
abstract class Performer {
  void perform();
}

// A class that implements an interface
class Person {
  // properties
  String name;
  int age;
  String hobby;
  String skill;

  // constructor
  Person(this.name, this.age, this.hobby, this.skill);

  // method
  void displayInfo() {
    print('Name: $name');
    print('Age: $age years old');
    print('Hobby: $hobby');
    print('Skill: $skill');
  }
}

// A class that overrides an inherited method
class Student extends Person implements Performer {
  String school;
  String grade;
  int score;

  // constructor
  Student(String name, int age, String hobby, String skill, this.school,
      this.grade, this.score)
      : super(name, age, hobby, skill) {
    // Constructor body
  }

  // Method
  @override
  void displayInfo() {
    super.displayInfo();
    print('School: $school');
    print('Grade: $grade');
    print('Score: $score');
  }

  @override
  void perform() {
    print('$name is a student at $school with a score of $score');
    print('$name has a grade of $grade and can perform $skill');
  }
}

void main() {
  var person1 = Person('Shikuku Samuel', 23, 'Cooking', 'Mechanic');
  var person2 = Person('Makambi Entrix', 23, 'Forex Trading', 'coding');
  var person3 = Student('Brian Kosgei', 22, 'fishing', 'web designing',
      'Power Learn Project', 'Distinction', 85);

  person1.displayInfo();
  person2.displayInfo();
  person3.displayInfo();
  (person3 as Performer).perform();
}
