//
//	LilyPondInterchangeFormat.swift
//	music-notation-import-lilypond
//
//	Created by Steven Woolgar on 2021-05-27.
//	Copyright © 2021 Steven Woolgar. All rights reserved.
//

import Foundation

public struct Score {
}

public struct LilyPondInterchangeFormat: MusicExpression {
	public var parts: [Score]?
	public var version: String?

	public init() {
		parts = []
	}
}
