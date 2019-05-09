import 'package:flutter/material.dart';
import 'package:flutter_base/utils/example_code_parser.dart';
import 'package:flutter_base/utils/syntax_highlighter.dart';

class ShowCode extends StatefulWidget {
  const ShowCode({this.filePath});

  final String filePath;
  _ShowCodeState createState() => _ShowCodeState();
}

class _ShowCodeState extends State<ShowCode> {
  String _exampleCode;

  @override
  void didChangeDependencies() {
    print('widget.filePath=======${widget.filePath}');
    getExampleCode(context,'${widget.filePath}', DefaultAssetBundle.of(context))
        .then<void>((String code) {
      if (mounted) {
        setState(() {
          _exampleCode = code ?? 'Example code not found';
        });
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final SyntaxHighlighterStyle style =
    Theme.of(context).brightness == Brightness.dark
        ? SyntaxHighlighterStyle.darkThemeStyle()
        : SyntaxHighlighterStyle.lightThemeStyle();

    Widget body;
    if (_exampleCode == null) {
      body = const Center(child: CircularProgressIndicator());
    } else {
      Widget _codeWidget;
      try{
        DartSyntaxHighlighter(style).format(_exampleCode);
        _codeWidget = RichText(
          text: TextSpan(
            style: const TextStyle(fontFamily: 'monospace', fontSize: 10.0),
            children: <TextSpan>[
              DartSyntaxHighlighter(style).format(_exampleCode)
            ],),
        );
      }catch (err){
        _codeWidget = Text(_exampleCode);
      }
      body = SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _codeWidget,
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(
                Icons.clear,
                semanticLabel: 'Close',
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: const Text('Example code'),
        ),
        body: body);
  }
}

