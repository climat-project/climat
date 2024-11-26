// DELETE THIS CONTENT IF YOU PUT COMBINED GRAMMAR IN Parser TAB
lexer grammar DslLexer;

channels {
  WHITESPACE_CHANNEL,
  COMMENT
}

EQ : '=' ;
COMMA : ',' ;
COLON : ':' ;
LPAREN : '(' ;
RPAREN : ')' ;
LCURLY : '{' ;
RCURLY : '}' ;
LBRAKET: '[';
RBRAKET: ']';
DOUBLE_QUOTE: '"' -> pushMode(StringTemplate);
QMARK: '?';
CONST: 'const';
TRUE: 'true';
FALSE: 'false';
ACTION: 'action';
SCOPE: 'scope';
PARAMS: 'params';
JAVASCRIPT: 'javascript';

// Parameters
FLAG: 'flag';
ARGUMENT: 'arg';

// Default
OVERRIDE: 'override';
DEFAULT: 'default';

// Sub
MOD_SEAL: '@seal';
MOD_SHIFT: '@shift';
MOD_ALIAS: '@alias';
MOD_ALIASES: '@aliases';
MOD_ALLOW_UNMATCHED: '@allow-unmatched';
SUB: 'sub';

SCRIPT_ACTION_CONTENT_BEGIN: '<%';
SCRIPT_ACTION_CONTENT_END: '%>';

// Props
ActionTemplate_BEGIN: ACTION WS* SCRIPT_ACTION_CONTENT_BEGIN -> pushMode(ActionTemplate);
CustomScript_JAVASCRIPT_BEGIN: JAVASCRIPT WS* ACTION WS* SCRIPT_ACTION_CONTENT_BEGIN -> pushMode(CustomScript);

// Comments
MULTILINE_COMMENT: '/*' .*? '*/' -> channel(COMMENT);
SINGLELINE_COMMENT: '//' .*? '\n' -> channel(COMMENT);

// Actions
SCOPE_PARAMS: ACTION WS* SCOPE WS* PARAMS;

// Docstring
Docstring_BEGIN: '"""' -> pushMode(Docstring);

WS: [ \t\n\r\f]+ -> channel(WHITESPACE_CHANNEL);
fragment ALPHANUMERIC: [a-zA-Z0-9];
IDENTIFIER: (ALPHANUMERIC | [_-])+;

mode StringTemplate;
StringTemplate_CONTENT: ('\\$' | '\\"' | ~[$"])+;
StringTemplate_Interpolation_OPEN: '$' LPAREN -> pushMode(Interpolation);
StringTemplate_CLOSE: '"' -> popMode;

mode ActionTemplate;
ActionTemplate_CONTENT: ('\\$' | '\\%' | ~[$%])+;
ActionTemplate_Interpolation_OPEN: '$' LPAREN -> pushMode(Interpolation);
ActionTemplate_CLOSE: SCRIPT_ACTION_CONTENT_END -> popMode;

mode Interpolation;
Interpolation_IDENTIFIER: IDENTIFIER;
Interpolation_COLON: COLON;
Interpolation_CLOSE: RPAREN -> popMode;
Interpolation_WS: WS;
Interpolation_NEGATE: '!';

mode Docstring;
Docstring_AT_PARAM: '@param' WS -> pushMode(DocstringRef);
Docstring_CONTENT: ~[@"]+;
Docstring_END: '"""' -> popMode;

mode DocstringRef;
Docstring_IDENTIFIER: IDENTIFIER WS -> popMode;

mode CustomScript;
CustomScript_SCRIPT: ('%' ~'>' | ~'%' | '\\%>')+;
CustomScript_END: SCRIPT_ACTION_CONTENT_END -> popMode;
