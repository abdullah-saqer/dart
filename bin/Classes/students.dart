import 'student.dart';

class Students {
	List<Student> students = [];

	void addStudent({
		required String id,
		required String name,
		required num age,
		required String address,
		required String phone,
		required String email
	}) {
		students.add(Student(
			id: id,
			name: name,
			age: age,
			address: address,
			phone: phone,
			email: email
		));
	}

	void removeStudent(String id) {
		students.removeWhere((student) => student.id == id);
	}
	
	void printStudentData([String? id]) {
		if(id != null) {
			try {
				print('Student $id Information:');
				var std = students.firstWhere((student) => student.id == id);
				std.studentData();
			} catch(e) {
				print('No Student With Id $id');
			}
			
		} else {
			students.isNotEmpty ? print('Students Information:\n') : print('No Students Information Available');
			students.forEach((student) {
				student.studentData();
				student.subjects.isNotEmpty ? print('--------------') : null;
			});
		}
	}
	void addSubject(String id, String name, double grade) {
		try {
			var std = students.firstWhere((student) => student.id == id);
			std.addSubject(name: name, grade: grade);
		} catch(e) {
			print('No Student With Id $id to Add Subject.');
		}
	}
	void calculateStudentGrade([String? id]) {
		if(id != null) {
			var std = students.firstWhere((student) => student.id == id);
			var pass = true;
			std.subjects.forEach((name, grade) {
				if(grade < 50) {
					pass = false;
				}
			});
			if(pass) {
				print('Student $id passed');
			} else {
				std.subjects.forEach((name, grade) {
					print('$name: $grade');
				});
			}
		}
	}
}