!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/19/2016 00:13'!
askUpdateNotCategoriesList
	| query args cols rows |

	query := '
	SELECT [Category.Number], [Category.Text] FROM [NotCategory] JOIN [Category]
	ON ([Category.Number] = [Category*Number]);
	'.
	args := {}.

	cols := OrderedCollection new.
	rows := OrderedCollection new.

	self onDatabase: self databaseName
		executeQuery: query
		args: args
		cols: cols
		rows: rows.

	varNotCategoriesList := rows.
	^rows
! !
