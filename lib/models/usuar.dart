class Usuario {

  int id;
  String nombre, apellidos, email, foto, contrasena;
  DateTime fechaNacimiento;

  Usuario({required this.id, required this.nombre, required this.apellidos, required this.email,
    required this.fechaNacimiento, required this.foto, required this.contrasena});

  factory Usuario.fromJson(Map<String, dynamic> json) =>
    Usuario(
      id: json['_id'],
      nombre: json['nombre'],
      apellidos: json['apellidos'],
      email: json['email'],
      fechaNacimiento: json['fechaNacimiento'],
      foto: json['foto'],
      contrasena: json['contrasena'],
    );

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'nombre' : nombre,
    'apellidos' : apellidos,
    'email' : email,
    'fechaNacimiento' : fechaNacimiento,
    'foto' : foto,
    'contrasena' : contrasena,
  };

}