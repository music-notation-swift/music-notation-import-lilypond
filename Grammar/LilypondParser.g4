//
//	lilypondParser.g4
//	music-notation-import-lilypond
//
//	Created by Steven Woolgar on 2021-07-21.
//	Copyright © 2021 Steven Woolgar. All rights reserved.
//

parser grammar Lilypond;
import LilypondLexer;

program		:	statement+;
statement	:	