class StudentModel {
  final int id;
  final String firsName;
  final String lastName;
  final String phone;
  final String address;
  final String email;
  final DateTime birthdate;
  final String fatherName;
  final String motherName;
  final bool stateStudent;
  final String gender;

  StudentModel(
      {required this.id,
      required this.firsName,
      required this.lastName,
      required this.phone,
      required this.address,
      required this.email,
      required this.birthdate,
      required this.fatherName,
      required this.motherName,
      required this.stateStudent,
      required this.gender});

  //Must be Edited and put the right value from API
  
  factory StudentModel.fromJson(jsonData) {
    return StudentModel(
      id: jsonData['id'],
      firsName: jsonData['firsName'],
      lastName: jsonData['lastName'],
      phone: jsonData['phone'],
      address: jsonData['address'],
      email: jsonData['email'],
      birthdate: jsonData['birthdate'],
      fatherName: jsonData['fatherName'],
      motherName: jsonData['motherName'],
      stateStudent: jsonData['stateStudent'],
      gender: jsonData['gender'],
    );
  }
}
