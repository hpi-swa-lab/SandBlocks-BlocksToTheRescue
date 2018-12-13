as yet unclassified
conditionBlock

	^ [:comparee | Compiler evaluate: (comparee asString, self conditionText contents asString)]