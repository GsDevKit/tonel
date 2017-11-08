*tonel-gemstone-core
parseString: aString 
	^ self parseStream: (ReadStreamPortable on: aString)
