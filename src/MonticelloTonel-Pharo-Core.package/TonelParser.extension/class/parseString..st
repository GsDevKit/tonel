*monticellotonel-pharo-core
parseString: aString 
	^ self parseStream: aString readStream
