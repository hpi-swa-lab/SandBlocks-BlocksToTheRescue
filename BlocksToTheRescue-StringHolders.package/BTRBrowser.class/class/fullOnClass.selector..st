as yet unclassified
fullOnClass: aClass selector: aSelector

	"Switched statements because some installation on setting selector might require a fully built window"

	^ self new
			buildAndOpenFullBrowser;
			setClass: aClass selector: aSelector