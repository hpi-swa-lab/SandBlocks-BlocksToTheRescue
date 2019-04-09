accessing
defaultContents

	| array |
	array := Array new: self defaultNrows * self defaultNcolumns.
	1 to: self defaultNrows * self defaultNcolumns do: [:index |
		array at: index put: ValueHolder new].
	^ array