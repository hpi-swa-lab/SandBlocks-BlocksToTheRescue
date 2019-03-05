event handling
dropFiles: evt

	(FileStream requestDropStream: 1) ifNotNil: [:stream |
				[self handleDroppedItem: stream event: evt] ensure: [stream close]]