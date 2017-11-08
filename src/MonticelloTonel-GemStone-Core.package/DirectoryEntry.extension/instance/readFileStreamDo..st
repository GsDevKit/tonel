*monticellotonel-gemstone-core
readFileStreamDo: aBlock
	| stream |
	stream := FileStreamPortable read: self fullName.
	^ [ aBlock value: stream ] ensure: [ stream close ]