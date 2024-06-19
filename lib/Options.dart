import 'package:flutter/material.dart';

class Options extends StatefulWidget {
  final String option;

  Options({Key? key, required this.option}) : super(key: key);

  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildOptionWidget(),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _buildOptionWidget() {
    return Container(
      height: 48,
      width: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 3,
          color: Color(0xffA42FC1),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.option,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Radio(
              value: widget.option,
              groupValue: _selectedValue,
              onChanged: (val) {
                setState(() {
                  _selectedValue = val as String?;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
