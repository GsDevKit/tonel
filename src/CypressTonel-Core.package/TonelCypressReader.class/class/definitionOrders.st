accessing
definitionOrders
	"Used to sort definitions inside a snapshot"
	^ Dictionary newFromPairs: { 
		CypressMethodDefinition. 			1.
		CypressClassDefinition. 			2 }