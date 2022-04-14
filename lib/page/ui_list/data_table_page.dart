import 'package:belajar_flutter/model/animal.dart';
import 'package:flutter/material.dart';

class DataTablePage extends StatelessWidget {
  const DataTablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Table Page'),
        titleSpacing: 0,
      ),
      body: Column(
        children: [
          _dataTableStatis(),
          _dataTableDinamis(),
        ],
      ),
    );
  }

  SingleChildScrollView _dataTableDinamis() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
            columns: const [
              DataColumn(label: Text('No')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Move')),
              DataColumn(label: Text('Weight')),
            ],
            rows: List.generate(animal.length, (index) {
              Animal hewan = animal[index];
              return DataRow(cells: [
                DataCell(Text('${index + 1}')),
                DataCell(Text(hewan.name)),
                DataCell(Text(hewan.move)),
                DataCell(Text(hewan.weight.toString())),
              ]);
            })),
      ),
    );
  }

  SingleChildScrollView _dataTableStatis() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('No')),
            DataColumn(label: Text('Company')),
            DataColumn(label: Text('Address')),
            DataColumn(label: Text('Post Code')),
          ],
          rows: const [
            DataRow(cells: [
              DataCell(Text('1')),
              DataCell(Text('Code Pro')),
              DataCell(Text('Indonesia')),
              DataCell(Text('123345')),
            ]),
            DataRow(cells: [
              DataCell(Text('2')),
              DataCell(Text('Code Pro')),
              DataCell(Text('Indonesia')),
              DataCell(Text('23456')),
            ])
          ],
        ),
      ),
    );
  }
}
