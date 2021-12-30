import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  themes() {
    showDialog(
        context: context,
        builder: (ctx) => SimpleDialog(
              title: const Text('Themes'),
              children: <Widget>[
                Center(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.lime,
                  ),
                ),
                Center(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.indigo[900],
                  ),
                ),
                Center(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                  ),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: const Text("Aswathy"),
              accountEmail: const Text("aswathy@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.HyX7xhw5a_F_QBi6drA07QHaFH%26pid%3DApi&f=1",
                    fit: BoxFit.cover,
                    width: 90,
                    height: 80,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.100hdwallpapers.com%2Fwallpapers%2F3200x2000%2Famazing_sky-other.jpg&f=1&nofb=1'),
                  fit: BoxFit.cover,
                ),
              )),
          ListTile(
            leading: const Icon(Icons.color_lens),
            title: const Text("Change Theme"),
            onTap: () {
              setState(() {
                themes();
              });
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text("Share"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
