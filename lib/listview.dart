import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListBuilderDemo extends StatefulWidget {
  @override
  _ListBuilderDemoState createState() => _ListBuilderDemoState();
  }

  class _ListBuilderDemoState extends State<ListBuilderDemo> {

    final items = List<String>.generate(50, (i) => 'Item Count : $i');
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder'),
        ),

        body: ListView.builder(
          itemCount: items.length,
           itemBuilder: (ctx,index) {

             return ListTile(
               leading: Icon(Icons.lock_clock),

               title: Text(

               
               items[index], 
               style: GoogleFonts.roboto(
                 fontSize: 20
                 ),
             ),
               );
           },
           ),

      );
    }
  }