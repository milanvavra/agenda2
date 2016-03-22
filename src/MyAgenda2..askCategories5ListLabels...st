!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/17/2016 19:09'!
askCategories5ListLabels
	| query args cols rows |

	query := '
	SELECT [Category.Number], [Category.Text] FROM [Category5] JOIN [Category]
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

	^rows
! !
