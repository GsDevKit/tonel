*monticellotonel-pharo-tests
createReaderFor: snapshot fileName: fileName
	| mem |
	
	mem := self newMemoryFileSystemSnapshot: snapshot.
        ^ TonelReader on: mem fileName: fileName
