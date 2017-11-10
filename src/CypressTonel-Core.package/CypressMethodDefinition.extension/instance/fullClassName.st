*cypresstonel-core
fullClassName
	
	^ self classIsMeta
		ifFalse: [self className]
		ifTrue: [
			self actualClass isNil
				ifFalse: [self className, ' class']
				ifTrue: [self className, ' classSide']]