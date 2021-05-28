// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "music-notation-import-lilypond",
	platforms: [.macOS(.v10_15)],
	products: [.library(name: "MusicNotationImportLilyPond", targets: ["MusicNotationImportLilyPond"])],

	dependencies: [
		.package(url: "https://github.com/music-notation-swift/music-notation.git", from: "0.2.10"),
	],

	targets: [
		.target(
			name: "MusicNotationImportLilyPond",
			dependencies: [
				.product(name: "MusicNotation", package: "music-notation")
			],
			path: "Sources"
		),
		.testTarget(
			name: "MusicNotationImportLilyPondTests",
			dependencies: ["MusicNotationImportLilyPond"]
		)
	]
)
