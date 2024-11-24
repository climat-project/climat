parser grammar DslParser;
options { tokenVocab=DslLexer; }

root: docstring? rootModifiers* IDENTIFIER (LPAREN params? RPAREN)? rootBody EOF;
rootModifiers: MOD_SEAL | MOD_ALLOW_UNMATCHED | aliasModifier | aliasesModifier;
rootBody: LCURLY rootStatements* RCURLY;
rootStatements: sub | action | constDef;

sub: docstring? subModifiers* SUB IDENTIFIER (LPAREN params? RPAREN)? subBody;
// TODO implement functionality for SEALED and SHIFTED modifiers
subModifiers: rootModifiers | MOD_SHIFT;
aliasModifier: MOD_ALIAS LPAREN IDENTIFIER RPAREN;
aliasesModifier: MOD_ALIASES LPAREN IDENTIFIER+ RPAREN;
params: param (COMMA param)* COMMA?;
param: IDENTIFIER paramShort? COLON paramType;
paramType: FLAG | argument;
argument: ARGUMENT (QMARK)? (EQ literal)?;
paramShort: IDENTIFIER;

subBody: LCURLY subStatements* RCURLY;
subStatements: rootStatements;

action: shellAction | javascriptAction | SCOPE_PARAMS;

shellAction: ACTION_PROP_BEGIN actionTemplateEntry* ActionTemplate_CLOSE;
javascriptAction: JAVASCRIPT_ACTION_PROP_BEGIN CustomScript_SCRIPT? CustomScript_END;

constDef: CONST IDENTIFIER EQ literal;

literal: stringTemplate | booleanLiteral;
booleanLiteral: TRUE | FALSE;

stringTemplate: DOUBLE_QUOTE stringTemplateEntry* Template_CLOSE;
stringTemplateEntry: stringTemplateContent | stringTemplateInterpolation;
stringTemplateContent: Template_CONTENT;
stringTemplateInterpolation: Template_INTERPOLATION_OPEN Interpolation_NEGATE? Interpolation_IDENTIFIER mapping? Interpolation_RPAREN;

actionTemplateEntry: actionTemplateContent | actionTemplateInterpolation;
actionTemplateContent: ActionTemplate_CONTENT;
actionTemplateInterpolation: ActionTemplate_INTERPOLATION_OPEN Interpolation_NEGATE? Interpolation_IDENTIFIER mapping? Interpolation_RPAREN;

mapping: Interpolation_COLON Interpolation_IDENTIFIER;

docstring: DOCSTRING_BEGIN docstringEntry* Docstring_END;
docstringEntry: Docstring_CONTENT | paramTag;
paramTag: Docstring_AT_PARAM Docstring_IDENTIFIER;

