!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/24/2016 21:54'!
askUpdateCategories4List
	| query args cols rows |

	query := '
	SELECT [Category.Number], [Category.Text] FROM [Category4] JOIN [Category]
	ON ([Category.Number] = [Category*Number])
	ORDER BY [Category.Text];
	'.
	args := {}.

	cols := OrderedCollection new.
	rows := OrderedCollection new.

	self onDatabase: self databaseName
		executeQuery: query
		args: args
		cols: cols
		rows: rows.

	varCategories4List := rows.
	^rows
! !
