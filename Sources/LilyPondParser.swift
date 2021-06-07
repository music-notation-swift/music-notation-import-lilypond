//
//	LilyPondParser.swift
//	music-notation-import-lilypond
//
//	Created by Steven Woolgar on 2021-06-06.
//	Copyright © 2021 Steven Woolgar. All rights reserved.
//

import Foundation

let lilyPondParse = Parser<LilyPondInterchangeFormat> { str in
	return LilyPondInterchangeFormat()
}
