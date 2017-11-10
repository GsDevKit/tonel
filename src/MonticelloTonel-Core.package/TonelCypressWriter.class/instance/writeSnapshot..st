writing
writeSnapshot: aSnapshot
	snapshot := aSnapshot.
	
	"ensure package dirs exists. 
	 It has to be just one but well..."
	self writePackage: (self definitions 
		detect: [:each | each isOrganizationDefinition ]
		ifFound: [ :each | each ]
		ifNone: [ self createDefaultOrganizationFrom: (self definitions detect: #isClassDefinition) ]).
	"now export classes"
	(self definitions 
		select: [:each | each isClassDefinition ])
		do: [ :each | self writer writeClass: each ].
	"... and method extensions"
	self writeMethodExtensions