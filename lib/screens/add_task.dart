import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Task Registration',
        home: TaskRegistration(),
        debugShowCheckedModeBanner: false);
  }
}

class TaskRegistration extends StatelessWidget {
  const TaskRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registrar tarea',
          style: GoogleFonts.poppins(
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildTextField('Título de la tarea'),
          _buildTextField('Descripción'),
          _buildDateField(),
          _buildRegisterButton(context),
        ],
      ),
    );
  }

  Widget _buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildDateField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: const InputDecoration(
          labelText: 'Fecha',
          border: OutlineInputBorder(),
        ),
        readOnly: true,
        onTap: () {
          // Implement date picker functionality if needed
        },
      ),
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 172, 217, 255),
            foregroundColor: const Color.fromARGB(255, 0, 89, 255)),
        child: const Text('Hecho', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
