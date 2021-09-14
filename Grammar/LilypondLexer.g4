//
//	lilypondLexer.g4
//	music-notation-import-lilypond
//
//	Created by Steven Woolgar on 2021-07-14.
//	Copyright © 2021 Steven Woolgar. All rights reserved.
//

lexer grammar LilypondLexer;

// Fragments

fragment SPACES
 : [ \t]+
 ;

fragment LINE_JOINING
 : : '\\' SPACES? ( '\r'? '\n' | '\r' | '\f')
 ;

fragment COMMENT
 : '%' ~[\r\n\f]*
 ;

SKIP_
 : ( SPACES | COMMENT | LINE_JOINING ) -> skip
 ;

// Tokens:

ACCEPTS			: '\\accepts'
ADDLYRICS		: '\\addlyrics'
ALIAS			: '\\alias'
ALTERNATIVE		: '\\alternative'
BOOK			: '\\book'
BOOKPART		: '\\bookpart'
CHANGE			: '\\change'
CHORDMODE		: '\\chordmode'
CHORDS			: '\\chords'
CONSISTS		: '\\consists'
CONTEXT			: '\\context'
DEFAULT			: '\\default'
DEFAULTCHILD	: '\\defaultchild'
DENIES			: '\\denies'
DESCRIPTION		: '\\description'
DRUMMODE		: '\\drummode'
DRUMS			: '\\drums'
ETC				: '\\etc'
FIGUREMODE		: '\\figuremode'
FIGURES			: '\\figures'
HEADER			: '\\header'
INVALID			: '\\version-error'
LAYOUT			: '\\layout'
LYRICMODE		: '\\lyricmode'
LYRICS			: '\\lyrics'
LYRICSTO		: '\\lyricsto'
MARKUP			: '\\markup'
MARKUPLIST		: '\\markuplist'
MIDI			: '\\midi'
NAME			: '\\name'
NEWCONTEXT		: '\\new'
NOTEMODE		: '\\notemode'
OVERRIDE		: '\\override'
PAPER			: '\\paper'
REMOVE			: '\\remove'
REPEAT			: '\\repeat'
REST			: '\\rest'
REVERT			: '\\revert'
SCORE			: '\\score'
SCORELINES		: '\\score-lines'
SEQUENTIAL		: '\\sequential'
SET				: '\\set'
SIMULTANEOUS	: '\\simultaneous'
TEMPO			: '\\tempo'
TYPE			: '\\type'
UNSET			: '\\unset'
WITH			: '\\with'
