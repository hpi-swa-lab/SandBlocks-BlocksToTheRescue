as yet unclassified
parseTree

	| builder invertedSet recognizer |
	recognizer := ERecognizer new
		grammar: self grammar;
		source: self source.

	invertedSet := recognizer buildItems completedSet invertedSet.
	builder := EParseTreeBuilder on: invertedSet usingGrammar: self grammar source: self source.
	^ builder buildTree first