*tonel-gemstone-core
parseString: aString forReader: aTonelReader
	^ self parseStream: (ReadStreamPortable on: aString) forReader: aTonelReader
