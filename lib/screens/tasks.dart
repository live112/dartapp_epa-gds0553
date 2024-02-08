import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tasks extends StatelessWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Tareas',
        style: GoogleFonts.poppins(
            fontSize: 40.0,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
            color: Colors.black),
      )),
      body: ListView(
        children: [
          _buildTaskCard('Tarea 1'),
          _buildTaskCard('Tarea 2'),
          _buildTaskCard('Tarea 3'),
          _buildTaskCard('Tarea 4'),
          _buildTaskCard('Tarea 5'),
          _buildTaskCard('Tarea 6'),
        ],
      ),
    );
  }

//https://images.pexels.com/photos/7135039/pexels-photo-7135039.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1
  Widget _buildTaskCard(String taskName) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(taskName),
        onTap: () {},
      ),
    );
  }
}
