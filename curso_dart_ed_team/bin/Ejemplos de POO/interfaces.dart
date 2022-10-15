import "Persona.dart";

void main() {
  EstudianteEgresado estudiante = EstudianteEgresado(
      colegio: "ITT", trabajo: "Programador", nombre: "Juan", edad: 21);

  estudiante.mostrarTrabajo();
}
