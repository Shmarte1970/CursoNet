void main(List<String> args)
{
  Map<int, String> mapAlumnos = {1:'Estrella', 2:'Luisa', 3:'Gabriela'};
  
  mapAlumnos.forEach((key, alumno) { 
    
    print('$key, $alumno');
    
  });
  
  mapAlumnos.update(2, (alumno) => 'Criss');

  print(mapAlumnos);

  mapAlumnos.remove(1);

  print(mapAlumnos);

  mapAlumnos.removeWhere((key, alumno) => alumno == 'Criss');

  print(mapAlumnos);

  mapAlumnos.updateAll(key, value) => '1' 'Ximena' ); // Como le paso mas parametros
  
}