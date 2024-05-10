import 'global_list.dart';

class Admin {
  static addTeacher(String name, int age, List subject, num salary) {
    Map<String, dynamic> teacherRecord = {
      'Name': name,
      'Age': age,
      'Subjects': subject,
      'Salary': salary
    };

    GlobalList.TeacherRecord.add(teacherRecord);

    print('Teacher list isssssss ========> ${GlobalList.TeacherRecord}');
  }

  static updateTeacher(
      String name, int age, List subject, List courses, num salary) {}

  static delteTeacher(int id) {}

  static addStudent(
      String name, int age, List enrollSubjects, int rollnum, int stdclass) {}

  static updateStudent(
      String name, int age, List enrollSubjects, int rollnum, int stdclass) {}

  static delteStudent(int id) {}
}
