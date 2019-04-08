*BlocksToTheRescue-Core
string: aStringOrText

	"Diffing is now done on Text, therefore we need to convert everything to text"
	string := aStringOrText asText.
	hash := string hash