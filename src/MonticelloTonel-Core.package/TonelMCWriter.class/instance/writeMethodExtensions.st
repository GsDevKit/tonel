private writing
writeMethodExtensions
	| classesAndMethods |
	classesAndMethods := Dictionary new.
	snapshot definitions 
		select: [ :each | each isMethodDefinition and: [ each isExtensionMethod ] ]
		thenDo: [ :each | 
			(classesAndMethods 
				at: each className
				ifAbsentPut: [ Set new ])
				add: each ].
	classesAndMethods keysAndValuesDo: [ :className :methods | 
		self writer
			writeExtensionMethods: methods 
			className: className ]
		
	