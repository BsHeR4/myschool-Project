class StudentProfileModel {
  final int studentId;
  final String username;
  final String firsName;
  final String lastName;
  final String phone;
  final String address;
  final String email;
  final String birthdate;
  final String fatherName;
  final String motherName;
  final String gender;
  final String major;
  final String className;
  final String division;
  final bool stateStudent;

  StudentProfileModel({
    required this.username,
    required this.studentId,
    required this.firsName,
    required this.lastName,
    required this.phone,
    required this.address,
    required this.email,
    required this.birthdate,
    required this.fatherName,
    required this.motherName,
    required this.gender,
    required this.major,
    required this.className,
    required this.division,
    required this.stateStudent,
  });

  //Must be Edited and put the right value from API

  factory StudentProfileModel.fromJson(jsonData) {
    return StudentProfileModel(
      studentId: jsonData['data']['studentId'],
      username: jsonData['data']['username'],
      firsName: jsonData['data']['firstName'],
      lastName: jsonData['data']['lastName'],
      phone: jsonData['data']['phone'],
      address: jsonData['data']['address'],
      email: jsonData['data']['email'],
      birthdate: jsonData['data']['birthdate'],
      fatherName: jsonData['data']['fathernName'],
      motherName: jsonData['data']['motherName'],
      gender: jsonData['data']['gender'],
      className: jsonData['data']['className'],
      division: jsonData['data']['Division'],
      major: jsonData['data']['major'],
      stateStudent: jsonData['status'],
    );
  }
}
