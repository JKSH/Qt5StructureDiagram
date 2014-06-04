/// Expected children: (none)
QtModuleElement {
	color: isPlaceholder ? "silver" : "greenyellow"
	radius: isPlaceholder ? height/2 : 0
	isItalicized: isPlaceholder

	property bool isPlaceholder: false
}
