!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/19/2016 01:16'!
askNone
	| query args cols rows |
	#(
'DELETE FROM [AndCategory];'
'DELETE FROM [NotCategory];'
	)
	do: [ :tmpQuery |
		query := tmpQuery.
		args := {}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.
	].

	self askUpdateSets.
	self askAndCategoriesSelectedCommand.


! !
