!MyAgenda2 methodsFor: 'view' stamp: 'mva 3/24/2016 12:23'!
askUpdateAndCategoriesList
	| query args cols rows |

	query := '
	SELECT DISTINCT [Category.Number], [Category.Text], COUNT(*)
	FROM [Link]
	JOIN [Item2] USING ([Item*Number])
	JOIN [AndCategory] USING ([Category*Number])
	JOIN [Category] ON ([Category.Number] = [Category*Number])
	GROUP BY [Category.Number], [Category.Text]
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

	varAndCategoriesList := rows.
	^rows
! !
