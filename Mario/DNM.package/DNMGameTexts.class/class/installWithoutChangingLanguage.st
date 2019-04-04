instance creation
installWithoutChangingLanguage
	"for reinstalling"
	|oldLanguage|
	UniqueInstance ifNil: [self install].
	oldLanguage := UniqueInstance language.
	self 
		install;
		language: oldLanguage.