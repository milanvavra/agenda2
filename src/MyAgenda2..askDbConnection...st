!MyAgenda2 methodsFor: 'sql' stamp: 'mva 3/26/2016 05:15'!
askDbConnection
	^varDbConnection ifNil: [ varDbConnection := SQLiteConnection fileNamed: self databaseName ]
! !
