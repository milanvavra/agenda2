!MyAgenda2 methodsFor: 'controller' stamp: 'mva 3/25/2016 17:02'!
askItemsItemCategoriesStoreOn: aStream
	| query args cols rows tmpItems |

	aStream truncate.

	query := '
	SELECT DISTINCT [Item.Number], [Item.Text], [Item.Url]
	FROM [Item]
	ORDER BY [Item.Text], [Item.Number];
	'.

	args := {}.
	cols := OrderedCollection new. rows := OrderedCollection new.
	self executeQuery: query args: args cols: cols rows: rows.

	tmpItems := rows.

	tmpItems do: [ :tmpItem | | tmpItemNumber tmpCategories |

		aStream nextPut: $I.
		aStream nextPut: Character space.
		aStream nextPutAll: (tmpItem at: 2).
		aStream nextPut: Character lf.

		aStream nextPut: $U.
		aStream nextPut: Character space.
		aStream nextPutAll: (tmpItem at: 3).
		aStream nextPut: Character lf.

		tmpItemNumber := tmpItem at: 1.

		query := '
		SELECT DISTINCT [Category.Number], [Category.Text] FROM
		[Link] JOIN
		[Category] ON([Category.Number] = [Category*Number])
		WHERE [Item*Number] = ?
		ORDER BY [Category.Text];
		'.

		args := {tmpItemNumber}.
		cols := OrderedCollection new. rows := OrderedCollection new.
		self executeQuery: query args: args cols: cols rows: rows.

		tmpCategories := rows.

		tmpCategories do: [ :tmpCategory |
			aStream nextPut: $C.
			aStream nextPut: Character space.
			aStream nextPutAll: (tmpCategory at: 2).
			aStream nextPut: Character lf.
		].
		aStream nextPut: Character lf.
	].

! !
