!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/19/2016 00:12'!
askUpdateItems2List
	| query args cols rows |

	query := '
	SELECT [Item.Number], [Item.Text] FROM [Item2] JOIN [Item]
	ON ([Item.Number] = [Item*Number]);
	'.
	args := {}.

	cols := OrderedCollection new.
	rows := OrderedCollection new.

	self onDatabase: self databaseName
		executeQuery: query
		args: args
		cols: cols
		rows: rows.

	varItems2List := rows.
	^rows
! !
