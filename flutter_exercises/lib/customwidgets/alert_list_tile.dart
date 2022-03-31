import 'package:flutter/material.dart';

class AlertListTile extends ListTile {
  late String _alertTitle;
  late String _buttonContent;
  late String? _content;

  AlertListTile(Icon leading, Text title, Text? subtitle, String alertTile,
      String? content, String buttonContent,
      {Key? key})
      : super(key: key, leading: leading, title: title, subtitle: subtitle) {
    _alertTitle = alertTile;
    _content = content;
    _buttonContent = buttonContent;
  }

  @override
  ListTile build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      subtitle: subtitle,
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(_alertTitle),
                content: Text(_content != null ? _content! : ''),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(_buttonContent))
                ],
              );
            });
      },
    );
  }
}
