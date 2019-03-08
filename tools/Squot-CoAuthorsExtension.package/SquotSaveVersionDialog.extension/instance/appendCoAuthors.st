*Squot-CoAuthorsExtension
appendCoAuthors

	CoAuthorList default select
		ifNotNil: [ :selection | selection
			ifNotEmpty: [
				self message: (self message, String crlfcrlf,
					(String streamContents: [:s | (selection
						collect: [ :gitStamp | 'Co-authored-by: ', gitStamp asStringWithoutTimestamp])
						asStringOn: s delimiter: String crlf])).
				self changed: #message]].