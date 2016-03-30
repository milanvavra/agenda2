!MyAgenda2 methodsFor: 'sql' stamp: 'mva 3/26/2016 05:15'!
onDatabase: database executeQuery: query args: args cols: cols rows: rows

	self askDbConnection
		executeQuery: query
		args: args
		cols: cols
		rows: rows.
! !
