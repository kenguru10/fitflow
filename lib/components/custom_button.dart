import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final Color initialBackgroundColor;
  final Color clickedBackgroundColor;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final String text;
  final VoidCallback onPressed;
  final Color initialTextColor;
  final Color clickedTextColor;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.initialBackgroundColor = const Color(0xFF444444),
    this.clickedBackgroundColor = const Color(0xFFBDE3FF),
    this.padding = const EdgeInsets.symmetric(vertical: 15),
    this.borderRadius = 10.0,
    this.initialTextColor = const Color(0xFFBDE3FF),
    this.clickedTextColor = const Color(0xFF444444),
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  late Color _currentTextColor;
  late Color _currentBackgroundColor;

  @override
  void initState() {
    super.initState();
    _currentTextColor = widget.initialTextColor; // Set initial text color
    _currentBackgroundColor =
        widget.initialBackgroundColor; // Set initial background color
  }

  void _handlePress() {
    setState(() {
      _currentTextColor = widget.clickedTextColor; // Change text color on click
      _currentBackgroundColor =
          widget.clickedBackgroundColor; // Change background color on click
    });
    widget.onPressed(); // Call the provided onPressed function
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _handlePress,
        style: ElevatedButton.styleFrom(
          backgroundColor: _currentBackgroundColor,
          padding: widget.padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: _currentTextColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
