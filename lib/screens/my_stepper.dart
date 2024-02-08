import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({Key? key}) : super(key: key);

  @override
  createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Una buena gestión',
          style: GoogleFonts.poppins(
            fontSize: 36.0,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.pexels.com/photos/7135052/pexels-photo-7135052.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stepper(
          type: StepperType.vertical,
          currentStep: _currentStep,
          onStepContinue: () {
            setState(() {
              if (_currentStep < 2) {
                _currentStep++;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (_currentStep > 0) {
                _currentStep--;
              }
            });
          },
          steps: <Step>[
            Step(
              title: Text('Planificación',
                  style:
                      GoogleFonts.poppins(fontSize: 20, color: Colors.white)),
              content: Column(
                children: <Widget>[
                  Text(
                    'Haz una lista de todo lo que tienes que hacer, sin importar el plazo o la dificultad. Esto te ayudará a tener una visión global de tu carga de trabajo y a no olvidarte de nada.\nIdentificar las tareas necesarias para cumplir el objetivo. Se debe desglosar el trabajo en unidades más pequeñas y manejables, asignando un responsable, un plazo y los recursos necesarios para cada una.',
                    style: GoogleFonts.lato(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              isActive: _currentStep >= 0,
            ),
            Step(
              title: Text('Ejecución',
                  style:
                      GoogleFonts.poppins(fontSize: 20, color: Colors.white)),
              content: Column(
                children: <Widget>[
                  Text(
                      'Establecer las prioridades y la secuencia de las tareas. Se debe determinar qué tareas son más importantes o urgentes, y en qué orden se deben realizar, teniendo en cuenta las dependencias y los riesgos.',
                      style:
                          GoogleFonts.lato(fontSize: 16, color: Colors.white)),
                ],
              ),
              isActive: _currentStep >= 1,
            ),
            Step(
              title: Text('Planificación',
                  style:
                      GoogleFonts.poppins(fontSize: 20, color: Colors.white)),
              content: Column(
                children: <Widget>[
                  Text(
                      'Monitorear el avance y el cumplimiento de las tareas. Se debe hacer un seguimiento periódico del estado de cada tarea, verificando si se están cumpliendo los plazos, los estándares de calidad y el presupuesto.\nEvaluar los resultados y el proceso. Se debe analizar si se logró el objetivo propuesto, qué se hizo bien y qué se puede mejorar, y cómo se puede aplicar lo aprendido a futuros proyectos o tareas.',
                      style:
                          GoogleFonts.lato(fontSize: 16, color: Colors.white)),
                ],
              ),
              isActive: _currentStep >= 2,
            ),
          ],
        ),
      ),
    );
  }
}
