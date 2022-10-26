import 'package:flutter/material.dart';

listMovie(){
  return ListView.builder(
    itemBuilder: (context, index){
      return const ListTile(
        title: Text('Teste Lista'),
      );
    },
  );
}