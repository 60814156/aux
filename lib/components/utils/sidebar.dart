import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:
          const Color.fromARGB(255, 3, 58, 5), // Cambia el color aquí
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('EDILBERTo HUANACo BALVInnn'),
            accountEmail: const Text('HUANACo.@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/utils/dg.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/utils/foto4.png'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(Icons.login, color: Colors.orange),
            title: const Text(
              'Iniciar Sesion',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              print('precionado  iniciar sesion');
            },
          ),
          const Divider(
            thickness: 3,
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            leading: const Icon(Icons.shop, color: Colors.orange),
            title: const Text(
              'Modulo Compras',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              print('precionado  para compras');
            },
          ),
          const Divider(
            thickness: 3,
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.orange),
            title: const Text(
              'Cerrar  Sesion',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              print('precionado  cerrar sesion');
            },
          ),
          const Divider(
            thickness: 3,
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.orange),
            title: const Text(
              'Bob Johnson',
              style: TextStyle(color: Colors.white),
            ),
            subtitle: const Text(
              'bob.johnson@example.com',
              style: TextStyle(color: Colors.white),
            ),
            trailing: const Icon(Icons.email),
            onTap: () {
              print(
                'Enviando correo a Bob Johnson...',
              );
            },
          ),
          const Divider(
            thickness: 3,
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.orange),
            title: const Text(
              'Inicio',
              style: TextStyle(color: Colors.white),
            ),
            // Color de fondo del ListTile
            onTap: () {
              Navigator.pushNamed(context, '/'); // Cierra el Drawer
            },
          ),
          const Divider(
            thickness: 3,
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: Colors.orange),
            title: const Text(
              'Cerrar sesión',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pop(context); // Cierra el Drawer
            },
          ),
          const Divider(
            thickness: 3,
            indent: 15,
            endIndent: 15,
          ),
        ],
      ),
    );
  }
}
