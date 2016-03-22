!MyAgenda2 methodsFor: 'sql' stamp: 'mva 3/17/2016 20:16'!
onDatabase: database executeQuery: query args: args cols: cols rows: rows

	| db |
	db := SQLiteConnection fileNamed: database.
	db ifNotNil: [
		[

			db
				executeQuery: query
				args: args
				cols: cols
				rows: rows.

		] ensure: [ db close ]
]
! !
