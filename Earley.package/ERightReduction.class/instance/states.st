as yet unclassified
states

	| recognizer |
	recognizer := ERecognizer new
		grammar: self grammar;
		source: self source.

	^ recognizer buildItems