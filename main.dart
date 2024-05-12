import './global_list.dart';
import 'dart:io';
import 'Admin.dart';

void main() {
  mainFunction();
}

void mainFunction() {
  print("====Welcome to our Portal============");
  print("====Login as a=======================");
  print(" 1- Admin \n 2- Teacher \n 3- Student \n 4- Exit ");
  print("=====================================");
  String? userSelection = stdin.readLineSync();
  switch (userSelection) {
    case '1':
      adminlogin();
      break;
    case '2':
      print('hello case 2');
      break;
    case '3':
      print('hello case 3');
      break;
    case '4':
      print('See you later byee');
      break;
    default:
      print('Please select correct option');
      mainFunction();
  }
}

void adminlogin() {
  print('Enter your Email');
  String? email = stdin.readLineSync();
  print('Enter your Password');
  String? password = stdin.readLineSync();

  if (email == GlobalList.adminEmail && password == GlobalList.adminPassword) {
    adminPortal();
  } else {
    print('Incorrect email password');
  }
}

void adminPortal() {
  print('Welcome to Admin Portal');
  print('Select Options to do');
  print(
      ' 1- Add Teacher \n 2- Update Teacher \n 3- Delete Teacher \n 4- Add Student \n 5- Update Student \n 6- Delete Student');
  String? userSelection = stdin.readLineSync();
  switch (userSelection) {
    case '1':
      int count = 1;
      List subjects = [];
      print('Add Teacher name');
      String? teacherName = stdin.readLineSync();
      print('Add Teacher Age');
      int teacherAge = int.parse(stdin.readLineSync()!);
      print('Add Teacher Salary');
      num? teacherSalary = int.parse(stdin.readLineSync()!);
      print('Add Teacher name');
      while (count < 6) {
        print('Add Teacher Subjects number ${count}');
        String? subjectname = stdin.readLineSync();
        subjects.add(subjectname);
        count++;
      }
      Admin.addTeacher(teacherName!, teacherAge, subjects, teacherSalary);
      adminPortal();
      break;
    case '2':
      int count = 1;
      List subjects = [];
      print('updated id');
      int id = int.parse(stdin.readLineSync()!);
      print('updated Teacher name');
      String? teacherName = stdin.readLineSync();
      print('updated Teacher Age');
      int teacherAge = int.parse(stdin.readLineSync()!);
      print('updated Teacher Salary');
      num? teacherSalary = int.parse(stdin.readLineSync()!);
      while (count < 6) {
        print('updated Teacher Subjects number ${count}');
        String? subjectname = stdin.readLineSync();
        subjects.add(subjectname);
        count++;
      }
      Admin.updateTeacher(
          id, teacherName!, teacherAge, subjects, teacherSalary);
      adminPortal();

      break;
    case '3':
      print('hello case 3');
      adminPortal();
      break;
    case '4':
      print('See you later byee');
      break;
    default:
      print('Please select correct option');
      mainFunction();
  }
}
