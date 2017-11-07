*monticellotonel-gemstone-tests
testLoadDefinitions
	| snapshot dir reader |
	
	snapshot := self mockSnapshot.
	dir := self newFileDirectorySnapshot: snapshot.
	reader := TonelReader on: dir fileName: 'MonticelloMocks'.
	reader loadDefinitions.
	
	self 
		assert: reader definitions size 
		equals: snapshot definitions size.
		
	reader definitions sorted 
		with: snapshot definitions sorted
		do: [ :a :b | self assertDefinition: a and: b ]
