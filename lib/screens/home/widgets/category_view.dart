import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categorias = ['Trabalho', 'Estudos', 'Casa'];
  int category = 0;

  void selectForward() {
    setState(() {
      category++;
    });
  }

  void selectBackward() {
    setState(() {
      category--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: category > 0 ? Colors.white : Colors.grey[700],
          ),
          onPressed: category > 0 ? selectBackward : null,
        ),
        Text(
          categorias[category].toUpperCase(),
          style: TextStyle(
            fontSize: 18,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
            color: category < categorias.length - 1 ? Colors.white : Colors.grey[700],
          ),
          onPressed: category < categorias.length - 1 ? selectForward : null,
        )
      ],
    );
  }
}
