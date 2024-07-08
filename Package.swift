// swift-tools-version:6.0
//
//  Package.swift
//  music-notation-import-lilypond
//
//  Created by Steven Woolgar on 10/16/2020.
//  Copyright © 2020 Steven Woolgar. All rights reserved.
//
import PackageDescription

let package = Package(
	name: "music-notation-import-lilypond",
	platforms: [.macOS(.v10_15)],
	products: [.library(name: "MusicNotationImportLilyPond", targets: ["MusicNotationImportLilyPond"])],

	dependencies: [
		.package(url: "https://github.com/music-notation-swift/music-notation.git", from: "0.2.11"),
		.package(url: "https://github.com/apple/swift-algorithms.git", from: "0.2.0"),
		.package(url: "https://github.com/apple/swift-collections.git", from: "0.0.3")
	],

	targets: [
		.target(
			name: "MusicNotationImportLilyPond",
			dependencies: [
				.product(name: "MusicNotation", package: "music-notation"),
				.product(name: "Algorithms", package: "swift-algorithms"),
				.product(name: "Collections", package: "swift-collections")
			],
			path: "Sources"
		),
		.testTarget(
			name: "MusicNotationImportLilyPondTests",
			dependencies: ["MusicNotationImportLilyPond"]
		)
	]
)
