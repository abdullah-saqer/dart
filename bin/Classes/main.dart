import 'dart:io';
import 'students.dart';

void main(List<String> arguments) {
  /* var s = Student(id: '1', name: 'ahmad', age: 44, address: 'Amman', phone: '+962799861292', email: 'Gadasdasd');
  s.studentData(); */
  var stds = Students();
  stds.addStudent(id: '1', name: 'Ahmad', age: 44, address: 'Amman', phone: '+962799861292', email: 'example@example.com');
  stds.addStudent(id: '2', name: 'Ali', age: 33, address: 'Zarqa', phone: '+962799861111', email: 'test@test.com');
  stds.addSubject('1', 'Test', 55);
  stds.addSubject('3', 'Test', 55);
  stds.removeStudent('4');
  stds.printStudentData();
  stds.calculateStudentGrade('1');
}