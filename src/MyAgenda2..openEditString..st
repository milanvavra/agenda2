!MyAgenda2 methodsFor: 'initialize-release' stamp: 'mva 4/10/2016 01:58'!
openEditString: aString

	| windowSpec builder |
	builder := ToolBuilder default.
	windowSpec := self buildWindowWith: builder specs: {
		(LayoutFrame fractions: (0@0 corner: 0.15@0) offsets: (0@0 corner: 0@self buttonHeight))
			-> [self buildAndCategoryButtonWith: builder].

		(LayoutFrame fractions: (0@0 corner: 0.15@0.5) offsets: (0@self buttonHeight corner: 0@self buttonHeight negated))
			-> [self buildAndCategoryListWith: builder].

		(LayoutFrame fractions: (0@0.5 corner: 0.15@0.5) offsets: (0@self buttonHeight negated corner: 0@0))
			-> [self buildNotCategoryButtonWith: builder].

		(LayoutFrame fractions: (0@0.5 corner: 0.15@1.0) offsets: (0@0 corner: 0@self buttonHeight negated))
			-> [self buildNotCategoryListWith: builder].

		(LayoutFrame fractions: (0.15@0 corner: 0.3@1.0) offsets: (0@0 corner: 0@self buttonHeight negated))
			-> [self buildAvailableCategoryListWith: builder].

		(LayoutFrame fractions: (0.3@0 corner: 0.7@0.1) offsets: (0@0 corner: 0@0))
			-> [self buildSelectedItemListWith: builder].

		(LayoutFrame fractions: (0.3@0.1 corner: 0.7@1.0) offsets: (0@0 corner: 0@self buttonHeight negated))
			-> [self buildItemListWith: builder].

		(LayoutFrame fractions: (0.7@0 corner: 0.85@1.0) offsets: (0@0 corner: 0@self buttonHeight negated))
			-> [self buildMemberCategoryListWith: builder].

		(LayoutFrame fractions: (0.85@0 corner: 1.0@1.0) offsets: (0@0 corner: 0@self buttonHeight negated))
			-> [self buildNotMemberCategoryListWith: builder].

		(LayoutFrame fractions: (0@1.0 corner: 1.0@1.0) offsets: (0@self buttonHeight negated corner: 0@0))
			-> [self buildLowerButtonsWith: builder].
	}.
	windowSpec closeAction: #askCloseAction.
	^windowSpec
! !
