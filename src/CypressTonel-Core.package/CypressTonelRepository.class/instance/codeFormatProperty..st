updating properties
codeFormatProperty: aString
  (aString equalsNoCase: 'Tonel')
    ifFalse: [ ^ super codeFormatProperty: aString ].
  properties at: '_gs_format' put: aString