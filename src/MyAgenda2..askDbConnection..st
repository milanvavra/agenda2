!MyAgenda2 methodsFor: 'sql' stamp: 'mva 4/10/2016 21:48'!
askDbConnection: aConnection
	((varDbConnection isNil not) and: [varDbConnection isOpen] ) ifTrue: [ varDbConnection close ].
	varDbConnection := aConnection
! !
