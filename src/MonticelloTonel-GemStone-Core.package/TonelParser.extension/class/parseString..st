*monticellotonel-gemstone-core
parseString: aString 
	^ self parseStream: (ReadStreamPortable on: aString)
