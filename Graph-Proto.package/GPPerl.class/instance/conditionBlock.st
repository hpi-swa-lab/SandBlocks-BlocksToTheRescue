as yet unclassified
conditionBlock

	^ [:comparee | Compiler evaluate: (comparee asString, '=' , self conditionString)]