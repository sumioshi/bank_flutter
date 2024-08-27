import 'package:flutter/material.dart';

void main() {
  runApp(C6BankApp());
}

class C6BankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFFFF6F00),
        ),
      ),
      home: C6BankHomePage(),
    );
  }
}

class C6BankHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('RodBank'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              color: Colors.grey[850],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Saldo disponível',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'R\$ 3.800,00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Card(
              color: Colors.grey[850],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.credit_card, color: Color(0xFFFF6F00)),
                title: Text(
                  'Cartão de crédito',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Fatura fechada: R\$ 850,00',
                  style: TextStyle(color: Colors.grey[400]),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                    size: 16, color: Colors.grey[400]),
              ),
            ),
            SizedBox(height: 16),
            Card(
              color: Colors.grey[850],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.savings, color: Color(0xFFFF6F00)),
                title: Text(
                  'Investimentos',
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Rendimento acumulado: R\$ 120,00',
                  style: TextStyle(color: Colors.grey[400]),
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                    size: 16, color: Colors.grey[400]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
