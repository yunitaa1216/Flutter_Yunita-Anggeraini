class Course {
  String title;
  String description;

  Course(this.title, this.description);
}

class Student {
  String name;
  String className;
  List<Course> courses = [];

  Student(this.name, this.className);

  void addCourse(Course course) {
    courses.add(course);
  }

  void removeCourse(Course course) {
    courses.remove(course);
  }

  void viewCourses() {
    if (courses.isEmpty) {
      print("$name belum memiliki kursus.");
    } else {
      print("$name memiliki kursus sebagai berikut:");
      for (var course in courses) {
        print("${course.title}: ${course.description}");
      }
    }
  }
}

void main() {
  var course1 = Course("Pemrograman Mobile", "Pengenalan pemrograman aplikasi mobile");
  var course2 = Course("Pemrograman Web 1", "Pengembangan aplikasi web dasar");

  var student1 = Student("Yunita", "FlutterD");

  student1.addCourse(course1);
  student1.addCourse(course2);
  
  student1.viewCourses();
  student1.removeCourse(course1);
  student1.viewCourses();
}