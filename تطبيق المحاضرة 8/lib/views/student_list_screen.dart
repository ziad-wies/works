// lib/views/student_list_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/student_controller.dart';
import '../models/student.dart';
import 'student_form_dialog.dart';

class StudentListScreen extends StatelessWidget {
  final StudentController studentController = Get.put(StudentController());

   StudentListScreen({super.key});

  void _showStudentForm(BuildContext context, {Student? student}) async {
    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (context) => StudentFormDialog(student: student),
    );
    if (result != null) {
      Student student = Student(
        id: result['id'],
        name: result['name'],
        age: result['age'],
        course: result['course'],
      );
      if (student.id == null) {
        await studentController.addStudent(student);
      } else {
        await studentController.updateStudent(student);
      }
    }
  }

  void _deleteStudent(int id) async {
    await studentController.deleteStudent(id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Registration'),
      ),
      body: Obx(() {
        if (studentController.students.isEmpty) {
          return const Center(child: Text('No students registered.'));
        }
        return ListView.builder(
          itemCount: studentController.students.length,
          itemBuilder: (context, index) {
            final student = studentController.students[index];
            return ListTile(
              title: Text(student.name),
              subtitle: Text('Age: ${student.age}, Course: ${student.course}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () =>
                        _showStudentForm(context, student: student),
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () => _deleteStudent(student.id!),
                  ),
                ],
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _showStudentForm(context),
      ),
    );
  }
}
