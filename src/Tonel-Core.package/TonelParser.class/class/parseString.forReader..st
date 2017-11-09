parsing
parseString: aString forReader: aTonelReader
	^ self parseStream: (self readStreamClass on: aString) forReader: aTonelReader
