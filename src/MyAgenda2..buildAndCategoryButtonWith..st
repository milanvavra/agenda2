!MyAgenda2 methodsFor: 'toolbuilder' stamp: 'mva 3/15/2016 19:12'!
buildAndCategoryButtonWith: builder
	| panelSpec i q |
	panelSpec := builder pluggablePanelSpec new
		layout: #horizontal;
		spacing: -1;
		children: OrderedCollection new;
		yourself.

	i := builder pluggableButtonSpec new.
	i
			model: self;
			label: 'All of these';
			help: 'Select "All of these" to add groups from "Groups Available" to the list below or to remove groups from the list below and place them back in "Groups Available" or to move groups from "None of these" to "All of these"' translated;
			state: #askAndCategoriesSelected;
			action: #askAndCategoriesSelectedCommand.

	q := builder pluggableButtonSpec new.
	q
			model: self;
			label: 'Default';
			help: 'Select "All of these" and make the "All of these" and "None of these" lists empty' translated;
			state: nil;
			action: #askNone.

	panelSpec children addAll: {
		i.
		builder pluggableSpacerSpec new.
		q
	}.

	^panelSpec
! !
