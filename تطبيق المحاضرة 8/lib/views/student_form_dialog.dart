import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/student_controller.dart';
import '../models/student.dart';

class StudentFormDialog extends StatelessWidget {
  final Student? student;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _courseController = TextEditingController();
  final StudentController studentController = Get.find<StudentController>();

  StudentFormDialog({super.key, this.student}) {
    if (student != null) {
      _nameController.text = student!.name;
      _ageController.text = student!.age.toString();
      _courseController.text = student!.course;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(student == null ? 'Add Student' : 'Edit Student'),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _ageController,
              decoration: const InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an age';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _courseController,
              decoration: const InputDecoration(labelText: 'Course'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a course';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Get.back();
          },
        ),
        TextButton(
          child: const Text('Save'),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              final name = _nameController.text;
              final age = int.parse(_ageController.text);
              final course = _courseController.text;
              if (student == null) {
                studentController.addStudent(Student(
                  name: name,
                  age: age,
                  course: course,
                ));
              } else {
                studentController.updateStudent(Student(
                  id: student!.id,
                  name: name,
                  age: age,
                  course: course,
                ));
              }
              Get.back();
            }
          },
        ),
      ],
    );
  }
}

void showStudentFormDialog(Student? student) {
  Get.dialog(StudentFormDialog(student: student));
}
