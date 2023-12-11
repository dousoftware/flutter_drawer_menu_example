import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const DrawerMenuExample());
  }
}

class DrawerMenuExample extends StatelessWidget {
  const DrawerMenuExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        //! Drawer menünün arkaplan rengini mavi yaptık
        backgroundColor: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserAccountsDrawerHeader(
              //! Drawer menünün üst kısmını kırmızı yaptık
              decoration: BoxDecoration(color: Colors.red),
              currentAccountPicture: Icon(
                Icons.account_circle_rounded,
                color: Colors.white,
              ),
              accountName: Text('Doğukan'),
              accountEmail: Text(
                'dousoftware@gmail.com',
              ),
            ),
            InkWell(
                onTap: () {
                  print('Kişisel Bilgilerime tıklandı');
                },
                child: const Text("Kişisel Bilgilerim")),
            const Text("Cüzdanım"),
            const Text("Ayarlar"),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Drawer Menü Kullanımı",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
