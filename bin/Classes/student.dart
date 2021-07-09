import 'person.dart';

class Student extends Person {
	late String email;
	late String phone;
	Map<String, double> subjects = {};

	Student({
		required String id,
		required String name,
		required num age,
		required String address,
		required this.phone,
		required this.email
	}) : super(
		id: id,
		name: name,
		age: age,
		address: address,
	);

	void addSubject({required String name, required double grade}) {
		subjects[name] = grade;
	}
	void studentData() {
		print('ID: $id, Name: $name, Age: $age, Address: $address, E-mail: $email, phone: $phone\n');
		subjects.isNotEmpty ? print('Student $name Subject(s)\n--------------') : print('Student $name Has No Subject(s)\n');
		subjects.forEach((key, value) {
			print('$key: $value');
		});
	}
}