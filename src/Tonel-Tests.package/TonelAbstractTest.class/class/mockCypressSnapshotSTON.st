private
mockCypressSnapshotSTON
  ^ 'CypressSnapshot {
	#definitions : [
		CypressClassDefinition {
			#name : ''MCMockASubclass'',
			#superclassName : ''MCMockClassA'',
			#category : ''MonticelloMocks'',
			#comment : '''',
			#instVarNames : [
				''x''
			],
			#classInstVarNames : [ ],
			#classVarNames : [
				''Y''
			],
			#poolDictionaryNames : [ ],
			#subclassType : #normal
		},
		CypressMethodDefinition {
			#classIsMeta : true,
			#source : ''initialize\n\n\tInitializationOrder := InitializationOrder\n\t\tifNil: [ -100 ] \"let the test fail\"\n\t\tifNotNil: [ InitializationOrder + 1.]'',
			#category : ''as yet unclassified'',
			#selector : ''initialize'',
			#className : ''MCMockASubclass''
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''variables\n\t^ x + Y + MCMockClassA'',
			#category : ''as yet unclassified'',
			#selector : ''variables'',
			#className : ''MCMockASubclass''
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''variables2\n\t^ ivar + CVar'',
			#category : ''as yet unclassified'',
			#selector : ''variables2'',
			#className : ''MCMockASubclass''
		},
		CypressClassDefinition {
			#name : ''MCMockClassA'',
			#superclassName : ''MCMock'',
			#category : ''MonticelloMocks'',
			#comment : ''This is a mock class. The Monticello tests manipulated it to simulate a developer modifying code in the image.'',
			#instVarNames : [
				''ivar''
			],
			#classInstVarNames : [ ],
			#classVarNames : [
				''CVar'',
				''InitializationOrder''
			],
			#poolDictionaryNames : [ ],
			#subclassType : #normal
		},
		CypressMethodDefinition {
			#classIsMeta : true,
			#source : ''cVar\n\t^ CVar'',
			#category : ''as yet unclassified'',
			#selector : ''cVar'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : true,
			#source : ''initializationOrder\n\n\t^ InitializationOrder'',
			#category : ''as yet unclassified'',
			#selector : ''initializationOrder'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : true,
			#source : ''initialize\n\tCVar := #initialized.\n\tInitializationOrder := 1.\n'',
			#category : ''as yet unclassified'',
			#selector : ''initialize'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : true,
			#source : ''one\n\n\t^ 1'',
			#category : ''as yet unclassified'',
			#selector : ''one'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : true,
			#source : ''touchCVar\n\tCVar := #touched'',
			#category : ''as yet unclassified'',
			#selector : ''touchCVar'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''a\n\t^ \''a2\'''',
			#category : ''numeric'',
			#selector : ''a'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''b\n\t^ \''b1\'''',
			#category : ''numeric'',
			#selector : ''b'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''c\n\t^ \''c1\'''',
			#category : ''numeric'',
			#selector : ''c'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''d\n\t^ \''d\'''',
			#category : ''numeric'',
			#selector : ''d'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''falsehood\n\t^ false'',
			#category : ''boolean'',
			#selector : ''falsehood'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''moreTruth\n\n\t^ true'',
			#category : ''boolean'',
			#selector : ''moreTruth'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''one\n\t^ 1'',
			#category : ''numeric'',
			#selector : ''one'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''q'',
			#category : ''drag\''n\''drop'',
			#selector : ''q'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''truth\n\t^ true'',
			#category : ''boolean'',
			#selector : ''truth'',
			#className : ''MCMockClassA''
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''two\n\t^ 2'',
			#category : ''numeric'',
			#selector : ''two'',
			#className : ''MCMockClassA''
		},
		CypressClassDefinition {
			#name : ''MCMockClassB'',
			#superclassName : ''MCMock'',
			#category : ''MonticelloMocks'',
			#comment : ''This comment has a bang! Bang! Bang!'',
			#instVarNames : [
				''ivarb''
			],
			#classInstVarNames : [
				''ciVar''
			],
			#classVarNames : [
				''CVar''
			],
			#poolDictionaryNames : [
				''MCMockAPoolDictionary''
			],
			#subclassType : #normal
		},
		CypressClassDefinition {
			#name : ''MCMockClassD'',
			#superclassName : ''Object'',
			#category : ''MonticelloMocks'',
			#comment : '''',
			#instVarNames : [ ],
			#classInstVarNames : [ ],
			#classVarNames : [ ],
			#poolDictionaryNames : [ ],
			#subclassType : #normal
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''one\n\t^ 1'',
			#category : ''as yet unclassified'',
			#selector : ''one'',
			#className : ''MCMockClassD''
		},
		CypressClassDefinition {
			#name : ''MCMockClassE'',
			#superclassName : ''Object'',
			#category : ''MonticelloMocks'',
			#comment : '''',
			#instVarNames : [ ],
			#classInstVarNames : [ ],
			#classVarNames : [ ],
			#poolDictionaryNames : [ ],
			#subclassType : #variable
		},
		CypressMethodDefinition {
			#classIsMeta : true,
			#source : ''two\n\t^ 2'',
			#category : ''as yet unclassified'',
			#selector : ''two'',
			#className : ''MCMockClassE''
		},
		CypressClassDefinition {
			#name : ''MCMockClassF'',
			#superclassName : ''Object'',
			#category : ''MonticelloMocks'',
			#comment : '''',
			#instVarNames : [ ],
			#classInstVarNames : [ ],
			#classVarNames : [
				''Foo''
			],
			#poolDictionaryNames : [ ],
			#subclassType : #normal
		},
		CypressClassDefinition {
			#name : ''MCMockClassG'',
			#superclassName : ''Object'',
			#category : ''MonticelloMocks'',
			#comment : '''',
			#instVarNames : [ ],
			#classInstVarNames : [ ],
			#classVarNames : [ ],
			#poolDictionaryNames : [ ],
			#subclassType : #words
		},
		CypressClassDefinition {
			#name : ''MCMockClassH'',
			#superclassName : ''Object'',
			#category : ''MonticelloMocks'',
			#comment : '''',
			#instVarNames : [ ],
			#classInstVarNames : [ ],
			#classVarNames : [ ],
			#poolDictionaryNames : [ ],
			#subclassType : #bytes
		},
		CypressClassDefinition {
			#name : ''MCMockClassI'',
			#superclassName : ''Object'',
			#category : ''MonticelloMocks'',
			#comment : '''',
			#instVarNames : [ ],
			#classInstVarNames : [ ],
			#classVarNames : [ ],
			#poolDictionaryNames : [ ],
			#subclassType : #weak
		},
		CypressMethodDefinition {
			#classIsMeta : false,
			#source : ''mockClassExtension\n\n\t\"I change the protocol of this method to resolve the failing test: MCChangeNotificationTest >> testExtMethodModified. This test basically test that when we modified an extension method, the extended package is marked as \''modified\''. The problem is that Monticello treat differently a classic method from an extension method, and this only by checking if the protocol name start with a star. Therefore, if the protocol does not match the extending package name, the extending package name will never be notified, and the test will fail. \"'',
			#category : ''*MonticelloMocks'',
			#selector : ''mockClassExtension'',
			#className : ''MCSnapshotTest''
		}
	]
}'