import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 60),
          Text(
            'DoWork',
            style: GoogleFonts.poppins(
              fontSize: 80.0,
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            'Gestiona tus tareas',
            style: GoogleFonts.poppins(
                fontSize: 40.0,
                fontWeight: FontWeight.w400,
                color: Colors.blueAccent),
          ),
          Container(
            margin: const EdgeInsets.all(50.0),
            padding: const EdgeInsets.all(40.0),
            decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(255, 219, 219, 219)),
            ),
            child: SingleChildScrollView(
              child: Text(
                '¿Te sientes abrumado por todas las cosas que tienes que hacer? ¿Te gustaría tener una forma fácil de organizar tus tareas y proyectos? Entonces necesitas la app de gestión de tareas más increíble del mundo: DoWork.\nPuedes crear listas, asignar prioridades, establecer recordatorios, compartir con otros y mucho más.',
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 172, 217, 255),
                foregroundColor: const Color.fromARGB(255, 0, 89, 255)),
            child: const Text('Comenzar', style: TextStyle(fontSize: 28)),
          ),
        ],
      ),
    );
  }
}
