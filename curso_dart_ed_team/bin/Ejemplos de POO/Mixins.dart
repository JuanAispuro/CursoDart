import 'Persona.dart';

void main() {
  Estudiante estudiante = Estudiante();
  EstudianteEgresado egresado = EstudianteEgresado();

  estudiante.CalificaExemanes();
  estudiante.ayudaEstudiantes();

  egresado.CalificaExemanes();
}
