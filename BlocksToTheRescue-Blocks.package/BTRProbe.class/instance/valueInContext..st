interface-evaluating
valueInContext: aContext

	| result |
	result := Compiler new evaluate: textMorph contents in: aContext to: self.
	self updatePreviewWith: result.
	self oldResult: result.
	^ result 