instance creation
on: aStream forReader: aTonelReader
	^ self new 
		stream: aStream;
		packageReader: aTonelReader;
		yourself