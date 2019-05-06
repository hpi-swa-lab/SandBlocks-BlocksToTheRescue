interface-evaluating
valueInContext: aContext

	| result hadError |
	hadError := false.
	result := [Compiler new evaluate: textMorph textMorph contents in: aContext to: self]
					on: Error
					do: [:e | hadError := true.
							e tag].
	self updatePreviewWith: result.
	hadError
		ifFalse: [self oldResult: result].
	^ result 