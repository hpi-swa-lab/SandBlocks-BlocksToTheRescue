fileIn/Out
versionedScanFrom: aStream

	"Consume the #"
	aStream next.
	^ self scanFrom: aStream version: (aStream upTo: $;)