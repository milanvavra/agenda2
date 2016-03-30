!MyAgenda2 methodsFor: 'sql' stamp: 'mva 3/26/2016 05:14'!
askDbConnection: aConnection
	varDbConnection ifNotNil: [ varDbConnection close ].
	varDbConnection := aConnection
! !
