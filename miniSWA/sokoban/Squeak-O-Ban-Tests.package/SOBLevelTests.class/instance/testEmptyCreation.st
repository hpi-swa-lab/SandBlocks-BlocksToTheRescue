as yet unclassified
testEmptyCreation

	| level |
	level := SOBLevel cols: 15 rows: 10.
	self assert: 15@10 equals: level size.
	self assert: (level tiles allSatisfy: [:each | each notNil and: each isFree]).