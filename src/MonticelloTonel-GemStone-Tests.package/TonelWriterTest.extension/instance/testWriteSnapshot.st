*monticellotonel-gemstone-tests
testWriteSnapshot
	| writer dir nl x |
	
	dir := self directory.
	writer := TonelWriter on: dir.
	writer writeSnapshot: self mockSnapshot.
	
	self assert: (x := dir directoryNamed: 'Monticello-Mocks') exists.
	self 
		assert: ((x := dir directoryNamed: 'Monticello-Mocks') entries collect: [:each | each name ]) sorted
		equals: #( 
			'MCMockASubclass.class.st'
			'MCMockClassA.class.st'
			'MCMockClassB.class.st'
			'MCMockClassD.class.st'
			'MCMockClassE.class.st'
			'MCMockClassF.class.st'
			'MCMockClassG.class.st'
			'MCMockClassH.class.st'
			'MCMockClassI.class.st'
			'MCMockClassJ.class.st'
			'MCMockClassK.class.st'
			'MCMockClassKA.class.st'
			'MCMockClassKB.class.st'
			'MCMockClassL.class.st'
			'MCMockClassM.class.st'
			'MCSnapshotTest.extension.st'
			'package.st').
	
	nl := TonelWriter lineEnding.
	self 
		assert: ((dir directoryNamed: 'Monticello-Mocks') fileNamed: 'MCMockClassA.class.st') contents
		equals: (self expectedMCMockClassAClassSt withLineEndings: nl).
	self 
		assert: ((dir directoryNamed: 'Monticello-Mocks') fileNamed:  'MCMockASubclass.class.st') contents
		equals: (self expectedMCMockASubclassClassSt withLineEndings: nl).
	self 
		assert: ((dir directoryNamed: 'Monticello-Mocks') fileNamed:  'MCSnapshotTest.extension.st') contents
		equals: (self expectedMCSnapshotTestExtensionSt withLineEndings: nl)
