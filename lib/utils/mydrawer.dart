import 'package:flutter/material.dart';

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/ai.jpg"),
                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Cengizhan Yanıkcı")
            ],
          )),
          ListTile(
            onTap: () => Navigator.pushNamed(context, "todolist"),
            leading: const Icon(Icons.list),
            title: const Text("TO-DO LİST"),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, "home"),
            leading: const Icon(Icons.home),
            title: const Text("HOME"),
          )
        ],
      ),
    );
  }
}
