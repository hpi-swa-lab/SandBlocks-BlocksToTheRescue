*BlocksToTheRescue-Core
fullPrintString
	"Answer a String whose characters are a description of the receiver."

	^ Text streamContents: [:s | self printOn: s]