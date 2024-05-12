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

    // print('Teacher list isssssss ========> ${GlobalList.TeacherRecord}');
  }

  static updateTeacher(int id, String name, int age, List subject, num salary) {
    for (var i = 0; i < GlobalList.TeacherRecord.length; i++) {
      if (i == id) {
        GlobalList.TeacherRecord[i]['Name'] = name;
        GlobalList.TeacherRecord[i]['Age'] = age;
        GlobalList.TeacherRecord[i]['Subjects'] = subject;
        GlobalList.TeacherRecord[i]['Salary'] = salary;
        print('Teacher Record Update');
        print(GlobalList.TeacherRecord[i]);
      } else {
        print('No Teacher Found on specific index');
      }
    }
  }

  static delteTeacher(int id) {
    print('agr ban jata hai tw ur qualified for a job for software');
  }

  static addStudent(
      String name, int age, List enrollSubjects, int rollnum, int stdclass) {}

  static updateStudent(
      String name, int age, List enrollSubjects, int rollnum, int stdclass) {}

  static delteStudent(int id) {}
}
