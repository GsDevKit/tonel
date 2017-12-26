private
encodeKey: key value: value

	super encodeKey: key asSymbol
		value: (value isSymbol ifTrue: [value asString] ifFalse: [value])
