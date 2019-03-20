'From Squeak5.2 of 13 December 2018 [latest update: #18229] on 20 March 2019 at 10:33:18 am'!

!MCFileTreeWriterWithSettableFileUtils methodsFor: 'accessing' stamp: 'LM 3/19/2019 22:45'!
addString: string at: fileNameOrPath encodedTo: ignored
    "fileNameOrPath may have one or two elements"
    "encodeTo: arg, because FileTree uses UTF8 by default"

    | fullPath path |
    path := MCFileTreePackageStructureStWriter useCypressWriter
        ifTrue: [ 
            fullPath := self fileUtils
                buildPathFrom:
                    {(MCFileTreeStCypressWriter monticelloMetaDirName).
                    fileNameOrPath}.
            self fileUtils ensureFilePathExists: fullPath relativeTo: self packageFileDirectory.
            fullPath ]
        ifFalse: [ fileNameOrPath ].
    string isEmpty
        ifFalse: [ self fileUtils writeStreamFor: path in: self packageFileDirectory do: [ :file | file nextPutAll: string ] ]
! !


!SquotCypressCodeSerializer methodsFor: 'private' stamp: 'LM 3/19/2019 22:57'!
packageNameFromPackageDirectory
    | filename |
    filename := fileUtils directoryName: self directory.
    ^ filename copyFrom: 1 to: (filename lastIndexOf: $.) - 1! !

!SquotCypressCodeSerializer methodsFor: 'private' stamp: 'LM 3/19/2019 22:07'!
rollingVersionInfo

	^MCVersionInfo
	    name: self packageNameFromPackageDirectory , '-squot.', DateAndTime totalSeconds asString
	    id: UUID new
	    message: 'created from a Squot Artifact.'
	    date: Date today
	    time: Time now
	    author: ''
	    ancestors: #()
	    stepChildren: #()! !

!SquotCypressCodeSerializer methodsFor: 'private' stamp: 'LM 3/19/2019 23:27'!
writePackage: anArtifact
	self initializeFileTreeWritersInPackageDirectory: (rootDirectory resolve: anArtifact path).
	fileTreeWriter writeVersionInfo: self rollingVersionInfo.
	fileTreeWriter writePackage: (MCPackage named: self packageNameFromPackageDirectory).
	anArtifact shadowOfTrackedObject squotWrite: anArtifact with: self.! !

