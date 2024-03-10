import 'package:flutter/material.dart';

class HireMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca De'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/Foto.png', // URL de la foto del usuario
              ),
            ),
            title: Text('Wagner Jafet Matos Peña'),
            subtitle: Text('Programador mobile'),
          ),
          Divider(), // Separador
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Correo electrónico'),
            subtitle: Text('wagnerjafet09@gmail.com'),
            onTap: () {
              // Lógica para enviar correo electrónico
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Número de teléfono'),
            subtitle: Text('+1-829-815-1891'),
            onTap: () {
              // Lógica para llamar al número de teléfono
            },
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Ubicación'),
            subtitle: Text('Santo Domingo Norte'),
          ),
        ],
      ),
    );
  }
}
