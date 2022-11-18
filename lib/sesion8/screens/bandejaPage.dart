import 'package:flutter/material.dart';

class BandejaPage extends StatelessWidget {
  const BandejaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> productos = [
      {
        'name': 'Ganchillo',
        'descripcion': 'Ganchillo 5mm',
        'pCompra': '5.00',
        'pVenta': '6.00'
      },
      {
        'name': 'Marcadores',
        'descripcion': 'Paquete de 12',
        'pCompra': '6.00',
        'pVenta': '7.00'
      },
      {
        'name': 'Ovillo Algodon',
        'descripcion': 'Ovillo color PaloRosa',
        'pCompra': '8.00',
        'pVenta': '10.00'
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTable'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          border: TableBorder.all(color: Colors.white),
          columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Description')),
            DataColumn(label: Text('P. Compra')),
            DataColumn(label: Text('P. Venta')),
          ],
          rows: productos
              .map(
                (e) => DataRow(
                  cells: [
                    DataCell(Text(e['name'])),
                    DataCell(Text(e['descripcion'])),
                    DataCell(Text(e['pCompra'])),
                    DataCell(Text(e['pVenta'])),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
