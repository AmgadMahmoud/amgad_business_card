import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TappableText extends StatefulWidget {
  final String label;
  final String text;
  final String uri;
  final LaunchMode launchMode;

  const TappableText({
    super.key,
    required this.label,
    required this.text,
    required this.uri,
    this.launchMode = LaunchMode.platformDefault,
  });

  @override
  State<TappableText> createState() => _TappableTextState();
}

class _TappableTextState extends State<TappableText> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) => setState(() => _pressed = false),
      onTapCancel: () => setState(() => _pressed = false),
      onTap: () => launchUrl(Uri.parse(widget.uri), mode: widget.launchMode),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${widget.label}:',
            style: TextStyle(
              fontSize: 20,
              color: colors.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 150),
              style: TextStyle(
                fontSize: 20,
                color: _pressed ? colors.onSurface : colors.secondary,
                decoration: _pressed
                    ? TextDecoration.none
                    : TextDecoration.underline,
                decorationColor: colors.secondary,
              ),
              child: Text(widget.text),
            ),
          ),
        ],
      ),
    );
  }
}
