*ToolIconsPlus
fromBase64: aString

	^ self fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: aString readStream)