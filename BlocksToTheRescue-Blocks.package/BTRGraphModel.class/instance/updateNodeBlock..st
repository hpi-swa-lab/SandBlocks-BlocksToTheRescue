as yet unclassified
updateNodeBlock: aNode

	aNode availableVariables: ((self incoming: aNode) collect: #valueName).