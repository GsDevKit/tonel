tests
testAddAndLoad
	| node |
true ifTrue: ["needs porting to Tonel" self flag: #todo. ^self].
	node := self addVersionWithSnapshot: self snapshot1 name: 'rev1'.
	self assert: (self snapshotAt: node) = self snapshot1.