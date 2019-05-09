as yet unclassified
sourceOn: aBlocketModel signature: aString

	^ aString asText, '
	<', BTRBlocketMethod pragma, '>
	^ ', (BTRBlockAttribute asTextFrom: aBlocketModel)