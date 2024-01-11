import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildRectangle(Colors.white, "PROYECTO 1"),
              _buildRectangleWithSquares(context, Colors.red, [Colors.blue, Colors.green, Colors.yellow]),
              _buildRectangleWithLongRectangles(context,
                  Colors.blue, [Colors.yellow, Colors.green, Colors.orange]),
              _buildRectangleWithRowAndColumn(context,
                  Colors.yellow, [Colors.purple, Colors.cyan, Colors.indigo]),
              _buildRectangleWithTwoElements(context,
                  Colors.pink,
                  [
                    _buildRowOfSquares([Colors.red, Colors.green, Colors.blue]),
                    _buildColumnOfLongRectangles([Colors.orange, Colors.purple, Colors.teal]),
                  ],
                  [2, 1]),
            ],
          ),
        ),
      ),
    );
  }

Widget _buildRectangle(Color color, String text) {
  return Container(
    height: 200.0,
    color: color,
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold, 
          fontSize: 40,
        ),
      ),
    ),
  );
}

Widget _buildRectangleWithSquares(BuildContext context, Color color, List<Color> squareColors) {
  return Container(
    height: 200.0,
    color: color,
    padding: EdgeInsets.all(0.05 * MediaQuery.of(context).size.width),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: squareColors.map((c) => _buildSquare(c)).toList(),
    ),
  );
}
Widget _buildRectangleWithLongRectangles(BuildContext context, Color color, List<Color> rectangleColors) {
  return Container(
    height: 200.0,
    color: color,
    padding: EdgeInsets.all(0.05 * MediaQuery.of(context).size.width),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: rectangleColors.map((c) => Expanded(child: _buildLongRectangle(c))).toList(),
    ),
  );
}

Widget _buildRectangleWithRowAndColumn(BuildContext context, Color color, List<Color> rowColors) {
  return Container(
    height: 200.0,
    color: color,
    padding: EdgeInsets.all(0.03 * MediaQuery.of(context).size.width),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: _buildRowOfSquares(rowColors)),
        Expanded(
          child: _buildColumnOfLongRectangles([Colors.orange, Colors.purple, Colors.teal]),
        ),
      ],
    ),
  );
}

Widget _buildRectangleWithTwoElements(
    BuildContext context, Color color, List<Widget> elements, List<int> flexValues) {
  return Container(
    height: 200.0,
    color: color,
    padding: EdgeInsets.all(0.05 * MediaQuery.of(context).size.width),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: flexValues[0],
          child: elements[0],
        ),
        Expanded(
          flex: flexValues[1],
          child: elements[1],
        ),
      ],
    ),
  );
}

  Widget _buildRowOfSquares(List<Color> colors) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: colors.map((c) => _buildSquare(c)).toList(),
    );
  }

Widget _buildColumnOfLongRectangles(List<Color> colors) {
  return Column(
    children: colors.map((c) => Expanded(child: _buildLongRectangle(c))).toList(),
  );
}

  Widget _buildSquare(Color color) {
    return Container(
      width: 50.0,
      height: 50.0,
      color: color,
    );
  }

  Widget _buildLongRectangle(Color color) {
    return Container(
      width: double.infinity,
      height: 50.0,
      color: color,
    );
  }
}