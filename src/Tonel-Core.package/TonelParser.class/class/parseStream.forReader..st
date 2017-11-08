parsing
parseStream: aStream forReader: aTonelReader
	^ (self on: aStream forReader: aTonelReader)
		 start