!MyAgenda2 methodsFor: 'sql' stamp: 'mva 3/18/2016 01:11'!
executeQuery: query args: args cols: cols rows: rows
	self onDatabase: self databaseName executeQuery: query args: args cols: cols rows: rows
! !
