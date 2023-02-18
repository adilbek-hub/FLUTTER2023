import 'package:flutter/material.dart';

void main() {}

/*
Бул Документация сиздин өз алдыңызча StatelessWidget жана StateFullWidgetиңизди тузуу максатында түшүндүрмө берет.
Бул Snippet деп аталат.
1. CTRL+SHIFT+P 
2. Snippet: Configure User Snippets
3. dart.json
4.
{
	// Place your snippets for dart here. Each snippet is defined under a snippet name and has a prefix, body and 
	// description. The prefix is what is used to trigger the snippet and the body will be expanded and inserted. Possible variables are:
	// $1, $2 for tab stops, $0 for the final cursor position, and ${1:label}, ${2:another} for placeholders. Placeholders with the 
	// same ids are connected.
	// Example:
	// "Print to console": {
	// 	"prefix": "log",
	// 	"body": [
	// 		"console.log('$1');",
	// 		"$2"
	// 	],
	// 	"description": "Log output to console"
	// },
	"Menin StateFull Widgetim": {
		"prefix": "MyStateFW",
		"body": [
			"import 'package:flutter/material.dart';",
			"",
			"class $1 extends StatefulWidget {",
			"\tconst $1({super.key});",
			"",
			"\t@override",
			"\tState<$1> createState() => _$1State();",
			"}",
			"",
			"class _$1State extends State<$1> {",
			"\t@override",
			"\tWidget build(BuildContext context) {",
			"\t\treturn Scaffold(",
			"\t\t\tappBar: AppBar(",
			"\t\t\t\ttitle: const Text('$1'),",
			"\t\t\t),",
			"\t\t);",
			"\t}",
			"}",
		],
		"description": "Bizdin custom StateFull Widgetibiz"
	},
	"Menin Stateless Widgetim": {
		"prefix": "MyStateLS",
		"body": [
			"class $1 extends StatelessWidget {",
			"\tconst $1({super.key});",
			"",
			"\t@override",
			"\tWidget build(BuildContext context) {",
			"\t\treturn Scaffold(",
			"\t\t\tappBar: AppBar(",
			"\t\t\t\ttitle: const Text('$1'),",
			"\t\t\t),",
			"\t\t);",
			"\t}",
			"}",
		],
		"description": "Bizdin custom Stateless Widgetibiz"
	}
}
Кенен түшүндүрмө.
\t - Бул бир таб жылдырат.
$1 - Бул Сиз мисалы MyHomePageдин ордун жаза турган жерин билдирет.
 */
