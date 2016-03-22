!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/19/2016 00:12'!
askUpdateCategories1List
	| query args cols rows |

	query := '
	SELECT [Category.Number], [Category.Text] FROM [Category1] JOIN [Category]
	ON ([Category.Number] = [Category*Number]) ORDER BY [Category.Text];
	'.
	args := {}.

	cols := OrderedCollection new.
	rows := OrderedCollection new.

	self onDatabase: self databaseName
		executeQuery: query
		args: args
		cols: cols
		rows: rows.

	varCategories1List := rows.
	^rows
! !
