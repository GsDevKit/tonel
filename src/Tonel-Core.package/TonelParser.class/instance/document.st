parsing
document
	^ { 
	self typeDef.
	self methodDefList.
	 } 
	flattened
	select: [:each | each notNil ]